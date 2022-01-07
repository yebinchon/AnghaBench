
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Server ;


 int CLOCK_MONOTONIC ;
 int assert (int *) ;
 int log_warning_errno (int,char*) ;
 int now (int ) ;
 int server_sync (int *) ;
 int write_timestamp_file_atomic (char*,int ) ;

__attribute__((used)) static void server_full_sync(Server *s) {
        int r;

        assert(s);

        server_sync(s);


        r = write_timestamp_file_atomic("/run/systemd/journal/synced", now(CLOCK_MONOTONIC));
        if (r < 0)
                log_warning_errno(r, "Failed to write /run/systemd/journal/synced, ignoring: %m");

        return;
}
