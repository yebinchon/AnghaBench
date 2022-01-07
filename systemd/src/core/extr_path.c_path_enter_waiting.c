
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Path ;


 int PATH_FAILURE_RESOURCES ;
 int PATH_WAITING ;
 int UNIT (int *) ;
 int log_unit_debug (int ,char*) ;
 int log_unit_warning_errno (int ,int,char*) ;
 scalar_t__ path_check_good (int *,int) ;
 int path_enter_dead (int *,int ) ;
 int path_enter_running (int *) ;
 int path_set_state (int *,int ) ;
 int path_watch (int *) ;

__attribute__((used)) static void path_enter_waiting(Path *p, bool initial, bool recheck) {
        int r;

        if (recheck)
                if (path_check_good(p, initial)) {
                        log_unit_debug(UNIT(p), "Got triggered.");
                        path_enter_running(p);
                        return;
                }

        r = path_watch(p);
        if (r < 0)
                goto fail;





        if (recheck)
                if (path_check_good(p, 0)) {
                        log_unit_debug(UNIT(p), "Got triggered.");
                        path_enter_running(p);
                        return;
                }

        path_set_state(p, PATH_WAITING);
        return;

fail:
        log_unit_warning_errno(UNIT(p), r, "Failed to enter waiting state: %m");
        path_enter_dead(p, PATH_FAILURE_RESOURCES);
}
