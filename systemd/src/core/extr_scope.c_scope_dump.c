
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int buf_runtime ;
typedef int Unit ;
struct TYPE_10__ {int kill_context; int runtime_max_usec; int result; int state; } ;
typedef TYPE_1__ Scope ;
typedef TYPE_1__ FILE ;


 int FORMAT_TIMESPAN_MAX ;
 TYPE_1__* SCOPE (int *) ;
 int UNIT (TYPE_1__*) ;
 int USEC_PER_SEC ;
 int assert (TYPE_1__*) ;
 int cgroup_context_dump (int ,TYPE_1__*,char const*) ;
 char* format_timespan (char*,int,int ,int ) ;
 int fprintf (TYPE_1__*,char*,char const*,char*,char const*,char*,char const*,char*) ;
 int kill_context_dump (int *,TYPE_1__*,char const*) ;
 char* scope_result_to_string (int ) ;
 char* scope_state_to_string (int ) ;

__attribute__((used)) static void scope_dump(Unit *u, FILE *f, const char *prefix) {
        Scope *s = SCOPE(u);
        char buf_runtime[FORMAT_TIMESPAN_MAX];

        assert(s);
        assert(f);

        fprintf(f,
                "%sScope State: %s\n"
                "%sResult: %s\n"
                "%sRuntimeMaxSec: %s\n",
                prefix, scope_state_to_string(s->state),
                prefix, scope_result_to_string(s->result),
                prefix, format_timespan(buf_runtime, sizeof(buf_runtime), s->runtime_max_usec, USEC_PER_SEC));

        cgroup_context_dump(UNIT(s), f, prefix);
        kill_context_dump(&s->kill_context, f, prefix);
}
