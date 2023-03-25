# BODA-BODA-UNIVERSITY
BodaBodaUniversity Module README
#Overview
This code represents a formal model of BodaBodaUniversity, which offers various courses with multiple presentations, taught by different tutors, and attended by students who can be in different states.

#Code Structure
The code consists of six signatures, one abstract signature, and one predicate.

Signatures
Course - represents a course and contains a set of presentations
Presentation - represents a presentation and is taught by one tutor, and has a maximum capacity for students
Tutor - represents a tutor and can take one or more courses
Student - an abstract signature that represents a student and contains one attribute, courseTaking, which refers to the course they are currently taking
CurrentStudent - a subclass of Student that represents a student who is currently taking a course
SuspendedStudent - a subclass of Student that represents a student who has been suspended from the course
ArchivedStudent - a subclass of Student that represents a student who has completed the course
FailedStudent - a subclass of Student that represents a student who has failed the course
Signature Operations
CourseAdmin - represents an administrator and contains operations for adding courses, enrolling students, registering students, receiving payments, and offering courses
Predicate
show - displays the model when the code is executed
#Running the Code
To run the code, simply execute the show predicate. The current configuration will run for 2 cycles.

#Conclusion
This model provides a formal representation of BodaBodaUniversity and its various entities. It can be used as a reference for understanding the relationships between courses, presentations, tutors, and students, and the operations that the administrator can perform.
