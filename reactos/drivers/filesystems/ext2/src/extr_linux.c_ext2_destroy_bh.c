
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bh_cache; } ;


 TYPE_1__ g_jbh ;
 int kmem_cache_destroy (int *) ;

void
ext2_destroy_bh()
{
    if (g_jbh.bh_cache) {
        kmem_cache_destroy(g_jbh.bh_cache);
        g_jbh.bh_cache = ((void*)0);
    }
}
