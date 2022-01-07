
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int swaps_by_devnode; int proc_swaps; int swap_event_source; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int hashmap_free (int ) ;
 int safe_fclose (int ) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static void swap_shutdown(Manager *m) {
        assert(m);

        m->swap_event_source = sd_event_source_unref(m->swap_event_source);
        m->proc_swaps = safe_fclose(m->proc_swaps);
        m->swaps_by_devnode = hashmap_free(m->swaps_by_devnode);
}
