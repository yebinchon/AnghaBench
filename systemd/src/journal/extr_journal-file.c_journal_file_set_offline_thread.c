
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JournalFile ;


 int journal_file_set_offline_internal (int *) ;
 int pthread_self () ;
 int pthread_setname_np (int ,char*) ;

__attribute__((used)) static void * journal_file_set_offline_thread(void *arg) {
        JournalFile *f = arg;

        (void) pthread_setname_np(pthread_self(), "journal-offline");

        journal_file_set_offline_internal(f);

        return ((void*)0);
}
