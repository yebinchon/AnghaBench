
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mc_dspace; int mc_space; int mc_deferred; int mc_alloc; } ;
typedef TYPE_1__ metaslab_class_t ;
typedef int int64_t ;


 int atomic_add_64 (int *,int ) ;

__attribute__((used)) static void
metaslab_class_space_update(metaslab_class_t *mc, int64_t alloc_delta,
    int64_t defer_delta, int64_t space_delta, int64_t dspace_delta)
{
 atomic_add_64(&mc->mc_alloc, alloc_delta);
 atomic_add_64(&mc->mc_deferred, defer_delta);
 atomic_add_64(&mc->mc_space, space_delta);
 atomic_add_64(&mc->mc_dspace, dspace_delta);
}
