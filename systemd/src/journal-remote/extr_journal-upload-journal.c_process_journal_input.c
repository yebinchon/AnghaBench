
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int entry_state; int journal; scalar_t__ uploading; } ;
typedef TYPE_1__ Uploader ;


 int ENTRY_CURSOR ;
 int journal_input_callback ;
 int log_error_errno (int,char*) ;
 int sd_journal_next_skip (int ,int) ;
 int start_upload (TYPE_1__*,int ,TYPE_1__*) ;

__attribute__((used)) static int process_journal_input(Uploader *u, int skip) {
        int r;

        if (u->uploading)
                return 0;

        r = sd_journal_next_skip(u->journal, skip);
        if (r < 0)
                return log_error_errno(r, "Failed to skip to next entry: %m");
        else if (r < skip)
                return 0;


        u->entry_state = ENTRY_CURSOR;
        return start_upload(u, journal_input_callback, u);
}
