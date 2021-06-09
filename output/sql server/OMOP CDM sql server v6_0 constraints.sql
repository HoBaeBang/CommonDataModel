--sql server CDM Foreign Key Constraints for OMOP Common Data Model v6_0
 
ALTER TABLE ohdsi.dbo.PERSON ADD CONSTRAINT fpk_PERSON_gender_concept_id FOREIGN KEY (gender_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PERSON ADD CONSTRAINT fpk_PERSON_race_concept_id FOREIGN KEY (race_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PERSON ADD CONSTRAINT fpk_PERSON_ethnicity_concept_id FOREIGN KEY (ethnicity_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PERSON ADD CONSTRAINT fpk_PERSON_location_id FOREIGN KEY (location_id) REFERENCES ohdsi.dbo.LOCATION (LOCATION_ID);
 
ALTER TABLE ohdsi.dbo.PERSON ADD CONSTRAINT fpk_PERSON_provider_id FOREIGN KEY (provider_id) REFERENCES ohdsi.dbo.PROVIDER (PROVIDER_ID);
 
ALTER TABLE ohdsi.dbo.PERSON ADD CONSTRAINT fpk_PERSON_care_site_id FOREIGN KEY (care_site_id) REFERENCES ohdsi.dbo.CARE_SITE (CARE_SITE_ID);
 
ALTER TABLE ohdsi.dbo.PERSON ADD CONSTRAINT fpk_PERSON_gender_source_concept_id FOREIGN KEY (gender_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PERSON ADD CONSTRAINT fpk_PERSON_race_source_concept_id FOREIGN KEY (race_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PERSON ADD CONSTRAINT fpk_PERSON_ethnicity_source_concept_id FOREIGN KEY (ethnicity_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.OBSERVATION_PERIOD ADD CONSTRAINT fpk_OBSERVATION_PERIOD_person_id FOREIGN KEY (person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.OBSERVATION_PERIOD ADD CONSTRAINT fpk_OBSERVATION_PERIOD_period_type_concept_id FOREIGN KEY (period_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_OCCURRENCE ADD CONSTRAINT fpk_VISIT_OCCURRENCE_person_id FOREIGN KEY (person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_OCCURRENCE ADD CONSTRAINT fpk_VISIT_OCCURRENCE_visit_concept_id FOREIGN KEY (visit_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_OCCURRENCE ADD CONSTRAINT fpk_VISIT_OCCURRENCE_visit_type_concept_id FOREIGN KEY (visit_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_OCCURRENCE ADD CONSTRAINT fpk_VISIT_OCCURRENCE_provider_id FOREIGN KEY (provider_id) REFERENCES ohdsi.dbo.PROVIDER (PROVIDER_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_OCCURRENCE ADD CONSTRAINT fpk_VISIT_OCCURRENCE_care_site_id FOREIGN KEY (care_site_id) REFERENCES ohdsi.dbo.CARE_SITE (CARE_SITE_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_OCCURRENCE ADD CONSTRAINT fpk_VISIT_OCCURRENCE_visit_source_concept_id FOREIGN KEY (visit_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_OCCURRENCE ADD CONSTRAINT fpk_VISIT_OCCURRENCE_admitted_from_concept_id FOREIGN KEY (admitted_from_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_OCCURRENCE ADD CONSTRAINT fpk_VISIT_OCCURRENCE_discharge_to_concept_id FOREIGN KEY (discharge_to_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_OCCURRENCE ADD CONSTRAINT fpk_VISIT_OCCURRENCE_preceding_visit_occurrence_id FOREIGN KEY (preceding_visit_occurrence_id) REFERENCES ohdsi.dbo.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_DETAIL ADD CONSTRAINT fpk_VISIT_DETAIL_person_id FOREIGN KEY (person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_DETAIL ADD CONSTRAINT fpk_VISIT_DETAIL_visit_detail_concept_id FOREIGN KEY (visit_detail_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_DETAIL ADD CONSTRAINT fpk_VISIT_DETAIL_visit_detail_type_concept_id FOREIGN KEY (visit_detail_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_DETAIL ADD CONSTRAINT fpk_VISIT_DETAIL_provider_id FOREIGN KEY (provider_id) REFERENCES ohdsi.dbo.PROVIDER (PROVIDER_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_DETAIL ADD CONSTRAINT fpk_VISIT_DETAIL_care_site_id FOREIGN KEY (care_site_id) REFERENCES ohdsi.dbo.CARE_SITE (CARE_SITE_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_DETAIL ADD CONSTRAINT fpk_VISIT_DETAIL_visit_detail_source_concept_id FOREIGN KEY (visit_detail_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_DETAIL ADD CONSTRAINT fpk_VISIT_DETAIL_admitting_source_concept_id FOREIGN KEY (admitting_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_DETAIL ADD CONSTRAINT fpk_VISIT_DETAIL_discharge_to_concept_id FOREIGN KEY (discharge_to_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_DETAIL ADD CONSTRAINT fpk_VISIT_DETAIL_preceding_visit_detail_id FOREIGN KEY (preceding_visit_detail_id) REFERENCES ohdsi.dbo.VISIT_DETAIL (VISIT_DETAIL_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_DETAIL ADD CONSTRAINT fpk_VISIT_DETAIL_visit_detail_parent_id FOREIGN KEY (visit_detail_parent_id) REFERENCES ohdsi.dbo.VISIT_DETAIL (VISIT_DETAIL_ID);
 
ALTER TABLE ohdsi.dbo.VISIT_DETAIL ADD CONSTRAINT fpk_VISIT_DETAIL_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES ohdsi.dbo.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
 
ALTER TABLE ohdsi.dbo.CONDITION_OCCURRENCE ADD CONSTRAINT fpk_CONDITION_OCCURRENCE_person_id FOREIGN KEY (person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.CONDITION_OCCURRENCE ADD CONSTRAINT fpk_CONDITION_OCCURRENCE_condition_concept_id FOREIGN KEY (condition_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.CONDITION_OCCURRENCE ADD CONSTRAINT fpk_CONDITION_OCCURRENCE_condition_type_concept_id FOREIGN KEY (condition_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.CONDITION_OCCURRENCE ADD CONSTRAINT fpk_CONDITION_OCCURRENCE_condition_status_concept_id FOREIGN KEY (condition_status_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.CONDITION_OCCURRENCE ADD CONSTRAINT fpk_CONDITION_OCCURRENCE_provider_id FOREIGN KEY (provider_id) REFERENCES ohdsi.dbo.PROVIDER (PROVIDER_ID);
 
ALTER TABLE ohdsi.dbo.CONDITION_OCCURRENCE ADD CONSTRAINT fpk_CONDITION_OCCURRENCE_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES ohdsi.dbo.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
 
ALTER TABLE ohdsi.dbo.CONDITION_OCCURRENCE ADD CONSTRAINT fpk_CONDITION_OCCURRENCE_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES ohdsi.dbo.VISIT_DETAIL (VISIT_DETAIL_ID);
 
ALTER TABLE ohdsi.dbo.CONDITION_OCCURRENCE ADD CONSTRAINT fpk_CONDITION_OCCURRENCE_condition_source_concept_id FOREIGN KEY (condition_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DRUG_EXPOSURE ADD CONSTRAINT fpk_DRUG_EXPOSURE_person_id FOREIGN KEY (person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.DRUG_EXPOSURE ADD CONSTRAINT fpk_DRUG_EXPOSURE_drug_concept_id FOREIGN KEY (drug_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DRUG_EXPOSURE ADD CONSTRAINT fpk_DRUG_EXPOSURE_drug_type_concept_id FOREIGN KEY (drug_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DRUG_EXPOSURE ADD CONSTRAINT fpk_DRUG_EXPOSURE_route_concept_id FOREIGN KEY (route_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DRUG_EXPOSURE ADD CONSTRAINT fpk_DRUG_EXPOSURE_provider_id FOREIGN KEY (provider_id) REFERENCES ohdsi.dbo.PROVIDER (PROVIDER_ID);
 
ALTER TABLE ohdsi.dbo.DRUG_EXPOSURE ADD CONSTRAINT fpk_DRUG_EXPOSURE_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES ohdsi.dbo.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
 
ALTER TABLE ohdsi.dbo.DRUG_EXPOSURE ADD CONSTRAINT fpk_DRUG_EXPOSURE_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES ohdsi.dbo.VISIT_DETAIL (VISIT_DETAIL_ID);
 
ALTER TABLE ohdsi.dbo.DRUG_EXPOSURE ADD CONSTRAINT fpk_DRUG_EXPOSURE_drug_source_concept_id FOREIGN KEY (drug_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PROCEDURE_OCCURRENCE ADD CONSTRAINT fpk_PROCEDURE_OCCURRENCE_person_id FOREIGN KEY (person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.PROCEDURE_OCCURRENCE ADD CONSTRAINT fpk_PROCEDURE_OCCURRENCE_procedure_concept_id FOREIGN KEY (procedure_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PROCEDURE_OCCURRENCE ADD CONSTRAINT fpk_PROCEDURE_OCCURRENCE_procedure_type_concept_id FOREIGN KEY (procedure_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PROCEDURE_OCCURRENCE ADD CONSTRAINT fpk_PROCEDURE_OCCURRENCE_modifier_concept_id FOREIGN KEY (modifier_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DEVICE_EXPOSURE ADD CONSTRAINT fpk_DEVICE_EXPOSURE_person_id FOREIGN KEY (person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.DEVICE_EXPOSURE ADD CONSTRAINT fpk_DEVICE_EXPOSURE_device_concept_id FOREIGN KEY (device_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DEVICE_EXPOSURE ADD CONSTRAINT fpk_DEVICE_EXPOSURE_device_type_concept_id FOREIGN KEY (device_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DEVICE_EXPOSURE ADD CONSTRAINT fpk_DEVICE_EXPOSURE_provider_id FOREIGN KEY (provider_id) REFERENCES ohdsi.dbo.PROVIDER (PROVIDER_ID);
 
ALTER TABLE ohdsi.dbo.DEVICE_EXPOSURE ADD CONSTRAINT fpk_DEVICE_EXPOSURE_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES ohdsi.dbo.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
 
ALTER TABLE ohdsi.dbo.DEVICE_EXPOSURE ADD CONSTRAINT fpk_DEVICE_EXPOSURE_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES ohdsi.dbo.VISIT_DETAIL (VISIT_DETAIL_ID);
 
ALTER TABLE ohdsi.dbo.DEVICE_EXPOSURE ADD CONSTRAINT fpk_DEVICE_EXPOSURE_device_source_concept_id FOREIGN KEY (device_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.MEASUREMENT ADD CONSTRAINT fpk_MEASUREMENT_person_id FOREIGN KEY (person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.MEASUREMENT ADD CONSTRAINT fpk_MEASUREMENT_measurement_concept_id FOREIGN KEY (measurement_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.MEASUREMENT ADD CONSTRAINT fpk_MEASUREMENT_measurement_type_concept_id FOREIGN KEY (measurement_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.MEASUREMENT ADD CONSTRAINT fpk_MEASUREMENT_operator_concept_id FOREIGN KEY (operator_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.MEASUREMENT ADD CONSTRAINT fpk_MEASUREMENT_value_as_concept_id FOREIGN KEY (value_as_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.MEASUREMENT ADD CONSTRAINT fpk_MEASUREMENT_unit_concept_id FOREIGN KEY (unit_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.MEASUREMENT ADD CONSTRAINT fpk_MEASUREMENT_provider_id FOREIGN KEY (provider_id) REFERENCES ohdsi.dbo.PROVIDER (PROVIDER_ID);
 
ALTER TABLE ohdsi.dbo.MEASUREMENT ADD CONSTRAINT fpk_MEASUREMENT_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES ohdsi.dbo.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
 
ALTER TABLE ohdsi.dbo.MEASUREMENT ADD CONSTRAINT fpk_MEASUREMENT_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES ohdsi.dbo.VISIT_DETAIL (VISIT_DETAIL_ID);
 
ALTER TABLE ohdsi.dbo.MEASUREMENT ADD CONSTRAINT fpk_MEASUREMENT_measurement_source_concept_id FOREIGN KEY (measurement_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.OBSERVATION ADD CONSTRAINT fpk_OBSERVATION_person_id FOREIGN KEY (person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.OBSERVATION ADD CONSTRAINT fpk_OBSERVATION_observation_concept_id FOREIGN KEY (observation_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.OBSERVATION ADD CONSTRAINT fpk_OBSERVATION_observation_type_concept_id FOREIGN KEY (observation_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.OBSERVATION ADD CONSTRAINT fpk_OBSERVATION_value_as_concept_id FOREIGN KEY (value_as_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.OBSERVATION ADD CONSTRAINT fpk_OBSERVATION_qualifier_concept_id FOREIGN KEY (qualifier_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.OBSERVATION ADD CONSTRAINT fpk_OBSERVATION_unit_concept_id FOREIGN KEY (unit_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.OBSERVATION ADD CONSTRAINT fpk_OBSERVATION_provider_id FOREIGN KEY (provider_id) REFERENCES ohdsi.dbo.PROVIDER (PROVIDER_ID);
 
ALTER TABLE ohdsi.dbo.OBSERVATION ADD CONSTRAINT fpk_OBSERVATION_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES ohdsi.dbo.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
 
ALTER TABLE ohdsi.dbo.OBSERVATION ADD CONSTRAINT fpk_OBSERVATION_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES ohdsi.dbo.VISIT_DETAIL (VISIT_DETAIL_ID);
 
ALTER TABLE ohdsi.dbo.OBSERVATION ADD CONSTRAINT fpk_OBSERVATION_observation_source_concept_id FOREIGN KEY (observation_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.OBSERVATION ADD CONSTRAINT fpk_OBSERVATION_obs_event_field_concept_id FOREIGN KEY (obs_event_field_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DEATH ADD CONSTRAINT fpk_DEATH_death_type_concept_id FOREIGN KEY (death_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DEATH ADD CONSTRAINT fpk_DEATH_cause_concept_id FOREIGN KEY (cause_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DEATH ADD CONSTRAINT fpk_DEATH_cause_source_concept_id FOREIGN KEY (cause_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.NOTE ADD CONSTRAINT fpk_NOTE_person_id FOREIGN KEY (person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.NOTE ADD CONSTRAINT fpk_NOTE_note_type_concept_id FOREIGN KEY (note_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.NOTE ADD CONSTRAINT fpk_NOTE_note_class_concept_id FOREIGN KEY (note_class_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.NOTE ADD CONSTRAINT fpk_NOTE_encoding_concept_id FOREIGN KEY (encoding_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.NOTE ADD CONSTRAINT fpk_NOTE_language_concept_id FOREIGN KEY (language_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.NOTE ADD CONSTRAINT fpk_NOTE_provider_id FOREIGN KEY (provider_id) REFERENCES ohdsi.dbo.PROVIDER (PROVIDER_ID);
 
ALTER TABLE ohdsi.dbo.NOTE ADD CONSTRAINT fpk_NOTE_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES ohdsi.dbo.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
 
ALTER TABLE ohdsi.dbo.NOTE ADD CONSTRAINT fpk_NOTE_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES ohdsi.dbo.VISIT_DETAIL (VISIT_DETAIL_ID);
 
ALTER TABLE ohdsi.dbo.NOTE_NLP ADD CONSTRAINT fpk_NOTE_NLP_section_concept_id FOREIGN KEY (section_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.NOTE_NLP ADD CONSTRAINT fpk_NOTE_NLP_note_nlp_concept_id FOREIGN KEY (note_nlp_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.NOTE_NLP ADD CONSTRAINT fpk_NOTE_NLP_note_nlp_source_concept_id FOREIGN KEY (note_nlp_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SPECIMEN ADD CONSTRAINT fpk_SPECIMEN_person_id FOREIGN KEY (person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.SPECIMEN ADD CONSTRAINT fpk_SPECIMEN_specimen_concept_id FOREIGN KEY (specimen_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SPECIMEN ADD CONSTRAINT fpk_SPECIMEN_specimen_type_concept_id FOREIGN KEY (specimen_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SPECIMEN ADD CONSTRAINT fpk_SPECIMEN_unit_concept_id FOREIGN KEY (unit_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SPECIMEN ADD CONSTRAINT fpk_SPECIMEN_anatomic_site_concept_id FOREIGN KEY (anatomic_site_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SPECIMEN ADD CONSTRAINT fpk_SPECIMEN_disease_status_concept_id FOREIGN KEY (disease_status_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.FACT_RELATIONSHIP ADD CONSTRAINT fpk_FACT_RELATIONSHIP_domain_concept_id_1 FOREIGN KEY (domain_concept_id_1) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.FACT_RELATIONSHIP ADD CONSTRAINT fpk_FACT_RELATIONSHIP_domain_concept_id_2 FOREIGN KEY (domain_concept_id_2) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.FACT_RELATIONSHIP ADD CONSTRAINT fpk_FACT_RELATIONSHIP_relationship_concept_id FOREIGN KEY (relationship_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SURVEY_CONDUCT ADD CONSTRAINT fpk_SURVEY_CONDUCT_person_id FOREIGN KEY (person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.SURVEY_CONDUCT ADD CONSTRAINT fpk_SURVEY_CONDUCT_survey_concept_id FOREIGN KEY (survey_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SURVEY_CONDUCT ADD CONSTRAINT fpk_SURVEY_CONDUCT_provider_id FOREIGN KEY (provider_id) REFERENCES ohdsi.dbo.PROVIDER (PROVIDER_ID);
 
ALTER TABLE ohdsi.dbo.SURVEY_CONDUCT ADD CONSTRAINT fpk_SURVEY_CONDUCT_assisted_concept_id FOREIGN KEY (assisted_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SURVEY_CONDUCT ADD CONSTRAINT fpk_SURVEY_CONDUCT_respondent_type_concept_id FOREIGN KEY (respondent_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SURVEY_CONDUCT ADD CONSTRAINT fpk_SURVEY_CONDUCT_timing_concept_id FOREIGN KEY (timing_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SURVEY_CONDUCT ADD CONSTRAINT fpk_SURVEY_CONDUCT_collection_method_concept_id FOREIGN KEY (collection_method_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SURVEY_CONDUCT ADD CONSTRAINT fpk_SURVEY_CONDUCT_survey_source_concept_id FOREIGN KEY (survey_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SURVEY_CONDUCT ADD CONSTRAINT fpk_SURVEY_CONDUCT_validated_survey_concept_id FOREIGN KEY (validated_survey_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SURVEY_CONDUCT ADD CONSTRAINT fpk_SURVEY_CONDUCT_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES ohdsi.dbo.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
 
ALTER TABLE ohdsi.dbo.SURVEY_CONDUCT ADD CONSTRAINT fpk_SURVEY_CONDUCT_response_visit_occurrence_id FOREIGN KEY (response_visit_occurrence_id) REFERENCES ohdsi.dbo.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
 
ALTER TABLE ohdsi.dbo.LOCATION_HISTORY ADD CONSTRAINT fpk_LOCATION_HISTORY_location_id FOREIGN KEY (location_id) REFERENCES ohdsi.dbo.LOCATION (LOCATION_ID);
 
ALTER TABLE ohdsi.dbo.LOCATION_HISTORY ADD CONSTRAINT fpk_LOCATION_HISTORY_relationship_type_concept_id FOREIGN KEY (relationship_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.CARE_SITE ADD CONSTRAINT fpk_CARE_SITE_place_of_service_concept_id FOREIGN KEY (place_of_service_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.CARE_SITE ADD CONSTRAINT fpk_CARE_SITE_location_id FOREIGN KEY (location_id) REFERENCES ohdsi.dbo.LOCATION (LOCATION_ID);
 
ALTER TABLE ohdsi.dbo.PROVIDER ADD CONSTRAINT fpk_PROVIDER_specialty_concept_id FOREIGN KEY (specialty_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PROVIDER ADD CONSTRAINT fpk_PROVIDER_care_site_id FOREIGN KEY (care_site_id) REFERENCES ohdsi.dbo.CARE_SITE (CARE_SITE_ID);
 
ALTER TABLE ohdsi.dbo.PROVIDER ADD CONSTRAINT fpk_PROVIDER_gender_concept_id FOREIGN KEY (gender_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PROVIDER ADD CONSTRAINT fpk_PROVIDER_specialty_source_concept_id FOREIGN KEY (specialty_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PROVIDER ADD CONSTRAINT fpk_PROVIDER_gender_source_concept_id FOREIGN KEY (gender_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PAYER_PLAN_PERIOD ADD CONSTRAINT fpk_PAYER_PLAN_PERIOD_person_id FOREIGN KEY (person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.PAYER_PLAN_PERIOD ADD CONSTRAINT fpk_PAYER_PLAN_PERIOD_contract_person_id FOREIGN KEY (contract_person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.PAYER_PLAN_PERIOD ADD CONSTRAINT fpk_PAYER_PLAN_PERIOD_payer_concept_id FOREIGN KEY (payer_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PAYER_PLAN_PERIOD ADD CONSTRAINT fpk_PAYER_PLAN_PERIOD_payer_source_concept_id FOREIGN KEY (payer_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PAYER_PLAN_PERIOD ADD CONSTRAINT fpk_PAYER_PLAN_PERIOD_plan_concept_id FOREIGN KEY (plan_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PAYER_PLAN_PERIOD ADD CONSTRAINT fpk_PAYER_PLAN_PERIOD_plan_source_concept_id FOREIGN KEY (plan_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PAYER_PLAN_PERIOD ADD CONSTRAINT fpk_PAYER_PLAN_PERIOD_contract_concept_id FOREIGN KEY (contract_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PAYER_PLAN_PERIOD ADD CONSTRAINT fpk_PAYER_PLAN_PERIOD_contract_source_concept_id FOREIGN KEY (contract_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PAYER_PLAN_PERIOD ADD CONSTRAINT fpk_PAYER_PLAN_PERIOD_sponsor_concept_id FOREIGN KEY (sponsor_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PAYER_PLAN_PERIOD ADD CONSTRAINT fpk_PAYER_PLAN_PERIOD_sponsor_source_concept_id FOREIGN KEY (sponsor_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PAYER_PLAN_PERIOD ADD CONSTRAINT fpk_PAYER_PLAN_PERIOD_stop_reason_concept_id FOREIGN KEY (stop_reason_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.PAYER_PLAN_PERIOD ADD CONSTRAINT fpk_PAYER_PLAN_PERIOD_stop_reason_source_concept_id FOREIGN KEY (stop_reason_source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.COST ADD CONSTRAINT fpk_COST_cost_domain_id FOREIGN KEY (cost_domain_id) REFERENCES ohdsi.dbo.DOMAIN (DOMAIN_ID);
 
ALTER TABLE ohdsi.dbo.COST ADD CONSTRAINT fpk_COST_cost_type_concept_id FOREIGN KEY (cost_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.COST ADD CONSTRAINT fpk_COST_currency_concept_id FOREIGN KEY (currency_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.COST ADD CONSTRAINT fpk_COST_revenue_code_concept_id FOREIGN KEY (revenue_code_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.COST ADD CONSTRAINT fpk_COST_drg_concept_id FOREIGN KEY (drg_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DRUG_ERA ADD CONSTRAINT fpk_DRUG_ERA_person_id FOREIGN KEY (person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.DRUG_ERA ADD CONSTRAINT fpk_DRUG_ERA_drug_concept_id FOREIGN KEY (drug_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DOSE_ERA ADD CONSTRAINT fpk_DOSE_ERA_person_id FOREIGN KEY (person_id) REFERENCES ohdsi.dbo.PERSON (PERSON_ID);
 
ALTER TABLE ohdsi.dbo.DOSE_ERA ADD CONSTRAINT fpk_DOSE_ERA_drug_concept_id FOREIGN KEY (drug_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DOSE_ERA ADD CONSTRAINT fpk_DOSE_ERA_unit_concept_id FOREIGN KEY (unit_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.CONDITION_ERA ADD CONSTRAINT fpk_CONDITION_ERA_condition_concept_id FOREIGN KEY (condition_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.METADATA ADD CONSTRAINT fpk_METADATA_metadata_concept_id FOREIGN KEY (metadata_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.METADATA ADD CONSTRAINT fpk_METADATA_metadata_type_concept_id FOREIGN KEY (metadata_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.METADATA ADD CONSTRAINT fpk_METADATA_value_as_concept_id FOREIGN KEY (value_as_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.CONCEPT ADD CONSTRAINT fpk_CONCEPT_domain_id FOREIGN KEY (domain_id) REFERENCES ohdsi.dbo.DOMAIN (DOMAIN_ID);
 
ALTER TABLE ohdsi.dbo.CONCEPT ADD CONSTRAINT fpk_CONCEPT_vocabulary_id FOREIGN KEY (vocabulary_id) REFERENCES ohdsi.dbo.VOCABULARY (VOCABULARY_ID);
 
ALTER TABLE ohdsi.dbo.CONCEPT ADD CONSTRAINT fpk_CONCEPT_concept_class_id FOREIGN KEY (concept_class_id) REFERENCES ohdsi.dbo.CONCEPT_CLASS (CONCEPT_CLASS_ID);
 
ALTER TABLE ohdsi.dbo.VOCABULARY ADD CONSTRAINT fpk_VOCABULARY_vocabulary_concept_id FOREIGN KEY (vocabulary_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DOMAIN ADD CONSTRAINT fpk_DOMAIN_domain_concept_id FOREIGN KEY (domain_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.CONCEPT_CLASS ADD CONSTRAINT fpk_CONCEPT_CLASS_concept_class_concept_id FOREIGN KEY (concept_class_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.CONCEPT_RELATIONSHIP ADD CONSTRAINT fpk_CONCEPT_RELATIONSHIP_concept_id_1 FOREIGN KEY (concept_id_1) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.CONCEPT_RELATIONSHIP ADD CONSTRAINT fpk_CONCEPT_RELATIONSHIP_concept_id_2 FOREIGN KEY (concept_id_2) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.CONCEPT_RELATIONSHIP ADD CONSTRAINT fpk_CONCEPT_RELATIONSHIP_relationship_id FOREIGN KEY (relationship_id) REFERENCES ohdsi.dbo.RELATIONSHIP (RELATIONSHIP_ID);
 
ALTER TABLE ohdsi.dbo.RELATIONSHIP ADD CONSTRAINT fpk_RELATIONSHIP_relationship_concept_id FOREIGN KEY (relationship_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.CONCEPT_SYNONYM ADD CONSTRAINT fpk_CONCEPT_SYNONYM_concept_id FOREIGN KEY (concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.CONCEPT_SYNONYM ADD CONSTRAINT fpk_CONCEPT_SYNONYM_language_concept_id FOREIGN KEY (language_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.CONCEPT_ANCESTOR ADD CONSTRAINT fpk_CONCEPT_ANCESTOR_ancestor_concept_id FOREIGN KEY (ancestor_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.CONCEPT_ANCESTOR ADD CONSTRAINT fpk_CONCEPT_ANCESTOR_descendant_concept_id FOREIGN KEY (descendant_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SOURCE_TO_CONCEPT_MAP ADD CONSTRAINT fpk_SOURCE_TO_CONCEPT_MAP_source_concept_id FOREIGN KEY (source_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SOURCE_TO_CONCEPT_MAP ADD CONSTRAINT fpk_SOURCE_TO_CONCEPT_MAP_target_concept_id FOREIGN KEY (target_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.SOURCE_TO_CONCEPT_MAP ADD CONSTRAINT fpk_SOURCE_TO_CONCEPT_MAP_target_vocabulary_id FOREIGN KEY (target_vocabulary_id) REFERENCES ohdsi.dbo.VOCABULARY (VOCABULARY_ID);
 
ALTER TABLE ohdsi.dbo.DRUG_STRENGTH ADD CONSTRAINT fpk_DRUG_STRENGTH_drug_concept_id FOREIGN KEY (drug_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DRUG_STRENGTH ADD CONSTRAINT fpk_DRUG_STRENGTH_ingredient_concept_id FOREIGN KEY (ingredient_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DRUG_STRENGTH ADD CONSTRAINT fpk_DRUG_STRENGTH_amount_unit_concept_id FOREIGN KEY (amount_unit_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DRUG_STRENGTH ADD CONSTRAINT fpk_DRUG_STRENGTH_numerator_unit_concept_id FOREIGN KEY (numerator_unit_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.DRUG_STRENGTH ADD CONSTRAINT fpk_DRUG_STRENGTH_denominator_unit_concept_id FOREIGN KEY (denominator_unit_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.COHORT_DEFINITION ADD CONSTRAINT fpk_COHORT_DEFINITION_definition_type_concept_id FOREIGN KEY (definition_type_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
 
ALTER TABLE ohdsi.dbo.COHORT_DEFINITION ADD CONSTRAINT fpk_COHORT_DEFINITION_subject_concept_id FOREIGN KEY (subject_concept_id) REFERENCES ohdsi.dbo.CONCEPT (CONCEPT_ID);
