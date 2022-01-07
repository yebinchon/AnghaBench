
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UUID ;
struct TYPE_4__ {int ObjectUuid; } ;
typedef TYPE_1__ RpcBinding ;
typedef int RPC_STATUS ;


 int RPC_S_OK ;
 int TRACE (char*,TYPE_1__*,int ) ;
 int UuidCreateNil (int *) ;
 int debugstr_guid (int const*) ;

RPC_STATUS RPCRT4_SetBindingObject(RpcBinding* Binding, const UUID* ObjectUuid)
{
  TRACE("(*RpcBinding == ^%p, UUID == %s)\n", Binding, debugstr_guid(ObjectUuid));
  if (ObjectUuid) Binding->ObjectUuid = *ObjectUuid;
  else UuidCreateNil(&Binding->ObjectUuid);
  return RPC_S_OK;
}
