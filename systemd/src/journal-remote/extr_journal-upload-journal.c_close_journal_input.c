
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ timeout; int * journal; } ;
typedef TYPE_1__ Uploader ;


 int assert (TYPE_1__*) ;
 int log_debug (char*) ;
 int sd_journal_close (int *) ;

void close_journal_input(Uploader *u) {
        assert(u);

        if (u->journal) {
                log_debug("Closing journal input.");

                sd_journal_close(u->journal);
                u->journal = ((void*)0);
        }
        u->timeout = 0;
}
