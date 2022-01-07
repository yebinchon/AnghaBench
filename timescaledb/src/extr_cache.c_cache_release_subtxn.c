
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int refcount; } ;
typedef int SubTransactionId ;
typedef TYPE_1__ Cache ;


 int Assert (int) ;
 int cache_destroy (TYPE_1__*) ;
 int remove_pin (TYPE_1__*,int ) ;

__attribute__((used)) static int
cache_release_subtxn(Cache *cache, SubTransactionId subtxnid)
{
 int refcount = cache->refcount - 1;

 Assert(cache->refcount > 0);
 cache->refcount--;

 remove_pin(cache, subtxnid);
 cache_destroy(cache);

 return refcount;
}
