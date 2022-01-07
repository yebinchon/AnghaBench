
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cad_burst_action; int ctrl_alt_del_ratelimit; } ;
typedef TYPE_1__ Manager ;


 scalar_t__ EMERGENCY_ACTION_NONE ;
 int EMERGENCY_ACTION_WARN ;
 int JOB_REPLACE_IRREVERSIBLY ;
 int SPECIAL_CTRL_ALT_DEL_TARGET ;
 int emergency_action (TYPE_1__*,scalar_t__,int ,int *,int,char*) ;
 int manager_start_target (TYPE_1__*,int ,int ) ;
 scalar_t__ ratelimit_below (int *) ;

__attribute__((used)) static void manager_handle_ctrl_alt_del(Manager *m) {




        if (ratelimit_below(&m->ctrl_alt_del_ratelimit) || m->cad_burst_action == EMERGENCY_ACTION_NONE)
                manager_start_target(m, SPECIAL_CTRL_ALT_DEL_TARGET, JOB_REPLACE_IRREVERSIBLY);
        else
                emergency_action(m, m->cad_burst_action, EMERGENCY_ACTION_WARN, ((void*)0), -1,
                                "Ctrl-Alt-Del was pressed more than 7 times within 2s");
}
