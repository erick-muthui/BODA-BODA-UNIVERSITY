module BodaBodaUniversity

// Boda Boda University offers various courses which run at different times
sig Course {
    lectures: set Presentation
}

// Each course has several presentations administered by certain tutors
sig Presentation {
    taught_by: one Tutor,
    max_capacity: one Int // maximum number of places for this presentation
}

// the presentations are led by tutors who can take 1 or more courses
sig Tutor {
    coursesTaken: set Course
}

// students take the courses but they go through various states
abstract sig Student {
    courseTaking: lone Course
}

// a student can be in one of four states: suspended, archived, failed or current (if reinstated)
one sig CurrentStudent extends Student {}
one sig SuspendedStudent extends Student {}
one sig ArchivedStudent extends Student {}
one sig FailedStudent extends Student {}

// an administrator handles adding courses, enrolling students etc
sig CourseAdmin {
    addCourse: Course -> Presentation -> set Course,
    enrollStudent: CurrentStudent -> Presentation -> set CurrentStudent,
    registerStudent: CurrentStudent -> set CurrentStudent,
    receivePayment: CurrentStudent -> set CurrentStudent,
    offerCourses: Tutor -> set Course
}

// display the model
pred show {}
run show for 2
