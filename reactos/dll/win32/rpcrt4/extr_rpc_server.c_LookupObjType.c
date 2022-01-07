
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UUID ;
struct TYPE_3__ {int Type; } ;
typedef TYPE_1__ RpcObjTypeMap ;


 TYPE_1__* LookupObjTypeMap (int *) ;
 int uuid_nil ;

__attribute__((used)) static inline UUID *LookupObjType(UUID *ObjUuid)
{
  RpcObjTypeMap *map = LookupObjTypeMap(ObjUuid);
  if (map)
    return &map->Type;
  else
    return &uuid_nil;
}
