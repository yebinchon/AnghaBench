
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int names; TYPE_2__* manager; } ;
typedef TYPE_3__ Unit ;
struct TYPE_6__ {int search_path; } ;
struct TYPE_7__ {int unit_path_cache; TYPE_1__ lookup_paths; } ;


 int assert (TYPE_3__*) ;
 int unit_file_find_dropin_paths (int *,int ,int ,char*,char*,int ,char***) ;

__attribute__((used)) static inline int unit_find_dropin_paths(Unit *u, char ***paths) {
        assert(u);

        return unit_file_find_dropin_paths(((void*)0),
                                           u->manager->lookup_paths.search_path,
                                           u->manager->unit_path_cache,
                                           ".d", ".conf",
                                           u->names,
                                           paths);
}
