
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ unit_cache_mtime; int unit_path_cache; void* unit_name_map; void* unit_id_map; } ;
typedef TYPE_1__ Manager ;


 void* hashmap_free (void*) ;
 int set_free_free (int ) ;

__attribute__((used)) static void manager_free_unit_name_maps(Manager *m) {
        m->unit_id_map = hashmap_free(m->unit_id_map);
        m->unit_name_map = hashmap_free(m->unit_name_map);
        m->unit_path_cache = set_free_free(m->unit_path_cache);
        m->unit_cache_mtime = 0;
}
