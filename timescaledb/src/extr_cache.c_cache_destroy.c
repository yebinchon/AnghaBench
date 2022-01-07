
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hcxt; } ;
struct TYPE_6__ {scalar_t__ refcount; TYPE_1__ hctl; int htab; int (* pre_destroy_hook ) (TYPE_2__*) ;} ;
typedef TYPE_2__ Cache ;


 int MemoryContextDelete (int ) ;
 int hash_destroy (int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
cache_destroy(Cache *cache)
{
 if (cache->refcount > 0)
 {

  return;
 }

 if (cache->pre_destroy_hook != ((void*)0))
  cache->pre_destroy_hook(cache);

 hash_destroy(cache->htab);
 MemoryContextDelete(cache->hctl.hcxt);
}
