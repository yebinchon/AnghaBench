
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RpcConnection ;
typedef int RPC_STATUS ;
typedef int BOOL ;


 int RPC_S_OK ;

__attribute__((used)) static RPC_STATUS rpcrt4_ncalrpc_authorize(RpcConnection *conn, BOOL first_time,
                                           unsigned char *in_buffer,
                                           unsigned int in_size,
                                           unsigned char *out_buffer,
                                           unsigned int *out_size)
{


    *out_size = 0;
    return RPC_S_OK;
}
