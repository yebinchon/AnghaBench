
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_cursor; int state_file; } ;
typedef TYPE_1__ Uploader ;


 int ENOENT ;
 int log_debug (char*,int ) ;
 int log_error_errno (int,char*,int ) ;
 int parse_env_file (int *,int ,char*,int *) ;

__attribute__((used)) static int load_cursor_state(Uploader *u) {
        int r;

        if (!u->state_file)
                return 0;

        r = parse_env_file(((void*)0), u->state_file, "LAST_CURSOR", &u->last_cursor);
        if (r == -ENOENT)
                log_debug("State file %s is not present.", u->state_file);
        else if (r < 0)
                return log_error_errno(r, "Failed to read state file %s: %m",
                                       u->state_file);
        else
                log_debug("Last cursor was %s", u->last_cursor);

        return 0;
}
