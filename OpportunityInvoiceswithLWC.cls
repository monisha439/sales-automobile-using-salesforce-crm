#OpportunityInvoiceswithLWC
public with sharing class OpportunityInvoiceswithLWC {
   
    @AuraEnabled(cacheable=true)
    public static List<Invoice__c> getInvoices(Id OpportunityId) {
        return [SELECT Name, Opportunity__c, Quantity__c, Unit_Price__c, Total_Price__c, Purchase_Date__c 
                FROM Invoice__c 
                WHERE Opportunity__c = :OpportunityId];
    }
 }
 
