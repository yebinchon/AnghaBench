
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RpcPktHdr ;
typedef int RpcConnection ;
typedef int RPC_STATUS ;
typedef int PRPC_MESSAGE ;


 int RPCRT4_ReceiveWithAuth (int *,int **,int ,int *,int *) ;

__attribute__((used)) static RPC_STATUS RPCRT4_Receive(RpcConnection *Connection, RpcPktHdr **Header,
                                 PRPC_MESSAGE pMsg)
{
    return RPCRT4_ReceiveWithAuth(Connection, Header, pMsg, ((void*)0), ((void*)0));
}
