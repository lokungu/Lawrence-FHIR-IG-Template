Profile: KisumuPatient
Parent: Patient
Id: kisumu-test-patienty 
Title: "Kisumu Test Patient"
Description: "My first Kisumu Patient"
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    UniqueID 1..1 and
    IN 1..1
* identifier[UniqueID].value 1..1
* identifier[UniqueID].system = "http://kenya.training.org/fhir/identifier/UniqueID"
* identifier[IN].value 1..1
* identifier[IN].system = "http://kenya.training.org/fhir/identifier/IN"
* name 1..1
* name.given 1..1
* name.family 1..1
* birthDate 0..1 MS
* gender 1..1
* address 0..1 MS
* address.country 1..1
* address.state 1..1
* address.district 1..1
* address.city 1..1
* address.line 1..1
* address.type 0..1
//* telecom[+].system = #phone
//* telecom[=].value 1..1                                              
//* telecom[+].  
//* telecom[=].value 1..1
* telecom 0..*
* contact 0..*
* contact.relationship 0..1
//* contact.extension 0..1
* contact.name.given 0..1
* contact.name.family 0..1
* contact.telecom 0..*
//* contact.telecom.extension 0..1
//* identifier.value 0..1