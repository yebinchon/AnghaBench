
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_7__ {int state; } ;
typedef TYPE_1__ Target ;
typedef TYPE_1__ FILE ;


 TYPE_1__* TARGET (int *) ;
 int assert (TYPE_1__*) ;
 int fprintf (TYPE_1__*,char*,char const*,char*) ;
 char* target_state_to_string (int ) ;

__attribute__((used)) static void target_dump(Unit *u, FILE *f, const char *prefix) {
        Target *t = TARGET(u);

        assert(t);
        assert(f);

        fprintf(f,
                "%sTarget State: %s\n",
                prefix, target_state_to_string(t->state));
}
