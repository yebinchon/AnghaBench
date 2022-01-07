
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int calendar_spec; } ;
typedef TYPE_1__ TimerValue ;
struct TYPE_9__ {TYPE_1__* values; } ;
typedef TYPE_2__ Timer ;


 int LIST_REMOVE (int ,TYPE_1__*,TYPE_1__*) ;
 int assert (TYPE_2__*) ;
 int calendar_spec_free (int ) ;
 int free (TYPE_1__*) ;
 int value ;

void timer_free_values(Timer *t) {
        TimerValue *v;

        assert(t);

        while ((v = t->values)) {
                LIST_REMOVE(value, t->values, v);
                calendar_spec_free(v->calendar_spec);
                free(v);
        }
}
