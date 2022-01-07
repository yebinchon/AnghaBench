
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int image_cache; } ;
typedef TYPE_1__ sd_event_source ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int hashmap_clear (int ) ;

__attribute__((used)) static int image_flush_cache(sd_event_source *s, void *userdata) {
        Manager *m = userdata;

        assert(s);
        assert(m);

        hashmap_clear(m->image_cache);
        return 0;
}
