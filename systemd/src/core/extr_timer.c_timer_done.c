
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_5__ {int stamp_path; void* realtime_event_source; void* monotonic_event_source; } ;
typedef TYPE_1__ Timer ;


 TYPE_1__* TIMER (int *) ;
 int assert (TYPE_1__*) ;
 int free (int ) ;
 void* sd_event_source_unref (void*) ;
 int timer_free_values (TYPE_1__*) ;

__attribute__((used)) static void timer_done(Unit *u) {
        Timer *t = TIMER(u);

        assert(t);

        timer_free_values(t);

        t->monotonic_event_source = sd_event_source_unref(t->monotonic_event_source);
        t->realtime_event_source = sd_event_source_unref(t->realtime_event_source);

        free(t->stamp_path);
}
