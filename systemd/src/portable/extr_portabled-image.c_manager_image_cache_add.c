
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int name; scalar_t__ discoverable; int path; TYPE_1__* userdata; } ;
struct TYPE_9__ {int image_cache; } ;
typedef TYPE_1__ Manager ;
typedef TYPE_2__ Image ;


 int assert (TYPE_1__*) ;
 int hashmap_put (int ,int ,TYPE_2__*) ;
 int image_ref (TYPE_2__*) ;
 int manager_image_cache_initialize (TYPE_1__*) ;

int manager_image_cache_add(Manager *m, Image *image) {
        int r;

        assert(m);
        r = manager_image_cache_initialize(m);
        if (r < 0)
                return r;

        image->userdata = m;

        r = hashmap_put(m->image_cache, image->path, image);
        if (r < 0)
                return r;

        image_ref(image);

        if (image->discoverable) {
                r = hashmap_put(m->image_cache, image->name, image);
                if (r < 0)
                        return r;

                image_ref(image);
        }

        return 0;
}
