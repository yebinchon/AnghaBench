
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct CGroupInfo {TYPE_1__* parent; int pids; struct CGroupInfo* cgroup_path; int is_const; struct CGroupInfo* children; } ;
struct TYPE_2__ {int children; } ;
typedef struct CGroupInfo Hashmap ;


 int LIST_REMOVE (int ,int ,struct CGroupInfo*) ;
 int assert (struct CGroupInfo*) ;
 int free (struct CGroupInfo*) ;
 int hashmap_free (int ) ;
 int hashmap_remove (struct CGroupInfo*,struct CGroupInfo*) ;
 int siblings ;

__attribute__((used)) static void remove_cgroup(Hashmap *cgroups, struct CGroupInfo *cg) {
        assert(cgroups);
        assert(cg);

        while (cg->children)
                remove_cgroup(cgroups, cg->children);

        hashmap_remove(cgroups, cg->cgroup_path);

        if (!cg->is_const)
                free(cg->cgroup_path);

        hashmap_free(cg->pids);

        if (cg->parent)
                LIST_REMOVE(siblings, cg->parent->children, cg);

        free(cg);
}
