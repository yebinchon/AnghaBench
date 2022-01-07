
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type_oid; } ;
typedef TYPE_1__ TypeInfoCache ;


 int InvalidOid ;

__attribute__((used)) inline static void
typeinfocache_init(TypeInfoCache *tic)
{
 tic->type_oid = InvalidOid;
}
