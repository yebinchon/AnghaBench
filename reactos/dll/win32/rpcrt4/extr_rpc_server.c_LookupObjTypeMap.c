
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UUID ;
struct TYPE_4__ {struct TYPE_4__* next; int Object; } ;
typedef TYPE_1__ RpcObjTypeMap ;
typedef int RPC_STATUS ;


 TYPE_1__* RpcObjTypeMaps ;
 int UuidCompare (int *,int *,int *) ;

__attribute__((used)) static inline RpcObjTypeMap *LookupObjTypeMap(UUID *ObjUuid)
{
  RpcObjTypeMap *rslt = RpcObjTypeMaps;
  RPC_STATUS dummy;

  while (rslt) {
    if (! UuidCompare(ObjUuid, &rslt->Object, &dummy)) break;
    rslt = rslt->next;
  }

  return rslt;
}
