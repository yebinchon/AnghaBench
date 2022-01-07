
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int show_status; scalar_t__ no_console_output; } ;
typedef scalar_t__ StatusType ;
typedef TYPE_1__ Manager ;


 int IN_SET (int ,int ,int ,...) ;
 int MANAGER_INITIALIZING ;
 int MANAGER_IS_SYSTEM (TYPE_1__*) ;
 int MANAGER_STARTING ;
 int MANAGER_STOPPING ;
 int SHOW_STATUS_TEMPORARY ;
 int SHOW_STATUS_YES ;
 scalar_t__ STATUS_TYPE_EMERGENCY ;
 int assert (TYPE_1__*) ;
 scalar_t__ manager_check_ask_password (TYPE_1__*) ;
 int manager_state (TYPE_1__*) ;

__attribute__((used)) static bool manager_get_show_status(Manager *m, StatusType type) {
        assert(m);

        if (!MANAGER_IS_SYSTEM(m))
                return 0;

        if (m->no_console_output)
                return 0;

        if (!IN_SET(manager_state(m), MANAGER_INITIALIZING, MANAGER_STARTING, MANAGER_STOPPING))
                return 0;


        if (type != STATUS_TYPE_EMERGENCY && manager_check_ask_password(m) > 0)
                return 0;

        return IN_SET(m->show_status, SHOW_STATUS_TEMPORARY, SHOW_STATUS_YES);
}
