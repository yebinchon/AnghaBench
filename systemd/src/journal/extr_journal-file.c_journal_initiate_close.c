
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;
typedef int JournalFile ;


 int assert (int *) ;
 int * journal_file_close (int *) ;
 int journal_file_set_offline (int *,int) ;
 int log_debug_errno (int,char*) ;
 int set_put (int *,int *) ;

JournalFile* journal_initiate_close(
                JournalFile *f,
                Set *deferred_closes) {

        int r;

        assert(f);

        if (deferred_closes) {

                r = set_put(deferred_closes, f);
                if (r < 0)
                        log_debug_errno(r, "Failed to add file to deferred close set, closing immediately.");
                else {
                        (void) journal_file_set_offline(f, 0);
                        return ((void*)0);
                }
        }

        return journal_file_close(f);
}
