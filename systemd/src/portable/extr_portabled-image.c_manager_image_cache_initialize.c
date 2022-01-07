
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int image_cache_defer_event; int event; int image_cache; } ;
typedef TYPE_1__ Manager ;


 int SD_EVENT_ONESHOT ;
 int SD_EVENT_PRIORITY_IDLE ;
 int assert (TYPE_1__*) ;
 int hashmap_ensure_allocated (int *,int *) ;
 int image_cache_flush ;
 int image_hash_ops ;
 int sd_event_add_defer (int ,int *,int ,TYPE_1__*) ;
 int sd_event_source_set_enabled (int ,int ) ;
 int sd_event_source_set_priority (int ,int ) ;

__attribute__((used)) static int manager_image_cache_initialize(Manager *m) {
        int r;

        assert(m);

        r = hashmap_ensure_allocated(&m->image_cache, &image_hash_ops);
        if (r < 0)
                return r;


        if (!m->image_cache_defer_event) {
                r = sd_event_add_defer(m->event, &m->image_cache_defer_event, image_cache_flush, m);
                if (r < 0)
                        return r;

                r = sd_event_source_set_priority(m->image_cache_defer_event, SD_EVENT_PRIORITY_IDLE);
                if (r < 0)
                        return r;
        }

        r = sd_event_source_set_enabled(m->image_cache_defer_event, SD_EVENT_ONESHOT);
        if (r < 0)
                return r;

        return 0;
}
