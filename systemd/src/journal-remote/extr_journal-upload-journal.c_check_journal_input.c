
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int journal; scalar_t__ input_event; } ;
typedef TYPE_1__ Uploader ;


 int SD_JOURNAL_NOP ;
 int close_journal_input (TYPE_1__*) ;
 int log_error_errno (int,char*) ;
 int process_journal_input (TYPE_1__*,int) ;
 int sd_journal_process (int ) ;

int check_journal_input(Uploader *u) {
        if (u->input_event) {
                int r;

                r = sd_journal_process(u->journal);
                if (r < 0) {
                        log_error_errno(r, "Failed to process journal: %m");
                        close_journal_input(u);
                        return r;
                }

                if (r == SD_JOURNAL_NOP)
                        return 0;
        }

        return process_journal_input(u, 1);
}
