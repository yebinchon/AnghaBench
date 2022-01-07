
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RpcConnection ;
typedef int RPC_STATUS ;


 int RPC_S_SERVER_UNAVAILABLE ;
 int assert (int ) ;

__attribute__((used)) static RPC_STATUS rpcrt4_ncacn_http_handoff(RpcConnection *old_conn, RpcConnection *new_conn)
{
    assert(0);
    return RPC_S_SERVER_UNAVAILABLE;
}
