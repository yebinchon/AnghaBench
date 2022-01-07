
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {char* where; int directory_mode; int timeout_idle_usec; int result; int state; } ;
typedef int FILE ;
typedef TYPE_1__ Automount ;


 TYPE_1__* AUTOMOUNT (int *) ;
 int FORMAT_TIMESPAN_MAX ;
 int USEC_PER_SEC ;
 int assert (TYPE_1__*) ;
 char* automount_result_to_string (int ) ;
 char* automount_state_to_string (int ) ;
 char* format_timespan (char*,int,int ,int ) ;
 int fprintf (int *,char*,char const*,char*,char const*,char*,char const*,char*,char const*,int,char const*,char*) ;

__attribute__((used)) static void automount_dump(Unit *u, FILE *f, const char *prefix) {
        char time_string[FORMAT_TIMESPAN_MAX];
        Automount *a = AUTOMOUNT(u);

        assert(a);

        fprintf(f,
                "%sAutomount State: %s\n"
                "%sResult: %s\n"
                "%sWhere: %s\n"
                "%sDirectoryMode: %04o\n"
                "%sTimeoutIdleUSec: %s\n",
                prefix, automount_state_to_string(a->state),
                prefix, automount_result_to_string(a->result),
                prefix, a->where,
                prefix, a->directory_mode,
                prefix, format_timespan(time_string, FORMAT_TIMESPAN_MAX, a->timeout_idle_usec, USEC_PER_SEC));
}
