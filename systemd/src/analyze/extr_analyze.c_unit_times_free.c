
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unit_times {struct unit_times* name; scalar_t__ has_data; } ;


 int free (struct unit_times*) ;

__attribute__((used)) static void unit_times_free(struct unit_times *t) {
        struct unit_times *p;

        for (p = t; p->has_data; p++)
                free(p->name);
        free(t);
}
