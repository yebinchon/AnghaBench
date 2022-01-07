
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {int (* receive_fragment ) (TYPE_2__*,int **,void**) ;} ;
typedef int RpcPktHdr ;
typedef TYPE_2__ RpcConnection ;
typedef int RPC_STATUS ;


 int RPCRT4_default_receive_fragment (TYPE_2__*,int **,void**) ;
 int stub1 (TYPE_2__*,int **,void**) ;

__attribute__((used)) static RPC_STATUS RPCRT4_receive_fragment(RpcConnection *Connection, RpcPktHdr **Header, void **Payload)
{
    if (Connection->ops->receive_fragment)
        return Connection->ops->receive_fragment(Connection, Header, Payload);
    else
        return RPCRT4_default_receive_fragment(Connection, Header, Payload);
}
