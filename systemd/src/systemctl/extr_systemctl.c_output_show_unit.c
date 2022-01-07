
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ job_id; int active_state; int following; int id; } ;
typedef TYPE_1__ UnitInfo ;


 int FNM_NOESCAPE ;
 scalar_t__ arg_all ;
 int arg_states ;
 scalar_t__ arg_types ;
 int assert (TYPE_1__ const*) ;
 int isempty (int ) ;
 scalar_t__ streq (int ,char*) ;
 int strv_find (scalar_t__,int ) ;
 int strv_fnmatch_or_empty (char**,int ,int ) ;
 int strv_isempty (int ) ;
 int unit_type_suffix (int ) ;

__attribute__((used)) static bool output_show_unit(const UnitInfo *u, char **patterns) {
        assert(u);

        if (!strv_fnmatch_or_empty(patterns, u->id, FNM_NOESCAPE))
                return 0;

        if (arg_types && !strv_find(arg_types, unit_type_suffix(u->id)))
                return 0;

        if (arg_all)
                return 1;




        if (!isempty(u->following))
                return 0;

        if (!strv_isempty(arg_states))
                return 1;



        if (u->job_id > 0)
                return 1;

        if (streq(u->active_state, "inactive"))
                return 0;

        return 1;
}
