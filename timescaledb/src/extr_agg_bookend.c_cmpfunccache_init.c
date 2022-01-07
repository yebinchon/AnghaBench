
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmp_type; } ;
typedef TYPE_1__ CmpFuncCache ;


 int InvalidOid ;

__attribute__((used)) inline static void
cmpfunccache_init(CmpFuncCache *cache)
{
 cache->cmp_type = InvalidOid;
}
