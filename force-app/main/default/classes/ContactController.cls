public class ContactController {
        @AuraEnabled(cacheable = true)
        public static list<Contact> getContacts(){
            list<Contact> conList = [select  FirstName, LastName, Email from Contact];
            return conList;
        }
        @AuraEnabled
        public static void forceError() {
            // Simulate an error scenario by throwing an AuraHandledException
            throw new AuraHandledException('Forced error');
        }
    }