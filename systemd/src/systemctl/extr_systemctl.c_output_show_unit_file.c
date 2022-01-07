
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; int path; } ;
typedef TYPE_1__ UnitFileList ;


 int FNM_NOESCAPE ;
 char** arg_types ;
 int assert (TYPE_1__ const*) ;
 int basename (int ) ;
 char* strrchr (int ,char) ;
 int strv_find (char**,char const*) ;
 int strv_fnmatch_or_empty (char**,int ,int ) ;
 int strv_isempty (char**) ;
 char const* unit_file_state_to_string (int ) ;

__attribute__((used)) static bool output_show_unit_file(const UnitFileList *u, char **states, char **patterns) {
        assert(u);

        if (!strv_fnmatch_or_empty(patterns, basename(u->path), FNM_NOESCAPE))
                return 0;

        if (!strv_isempty(arg_types)) {
                const char *dot;

                dot = strrchr(u->path, '.');
                if (!dot)
                        return 0;

                if (!strv_find(arg_types, dot+1))
                        return 0;
        }

        if (!strv_isempty(states) &&
            !strv_find(states, unit_file_state_to_string(u->state)))
                return 0;

        return 1;
}
