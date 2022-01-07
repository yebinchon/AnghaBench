
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int runtime_storage; scalar_t__ runtime_journal; int system_storage; scalar_t__ system_journal; } ;
typedef TYPE_1__ Server ;


 int CLOCK_MONOTONIC ;
 int assert (TYPE_1__*) ;
 int log_warning_errno (int,char*) ;
 int now (int ) ;
 int patch_min_use (int *) ;
 int server_rotate (TYPE_1__*) ;
 int server_vacuum (TYPE_1__*,int) ;
 int write_timestamp_file_atomic (char*,int ) ;

__attribute__((used)) static void server_full_rotate(Server *s) {
        int r;

        assert(s);

        server_rotate(s);
        server_vacuum(s, 1);

        if (s->system_journal)
                patch_min_use(&s->system_storage);
        if (s->runtime_journal)
                patch_min_use(&s->runtime_storage);


        r = write_timestamp_file_atomic("/run/systemd/journal/rotated", now(CLOCK_MONOTONIC));
        if (r < 0)
                log_warning_errno(r, "Failed to write /run/systemd/journal/rotated, ignoring: %m");
}
