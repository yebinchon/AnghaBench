
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int image_cache; } ;
typedef TYPE_1__ Manager ;
typedef int Image ;


 int assert (TYPE_1__*) ;
 int * hashmap_get (int ,char const*) ;

Image *manager_image_cache_get(Manager *m, const char *name_or_path) {
        assert(m);

        return hashmap_get(m->image_cache, name_or_path);
}
