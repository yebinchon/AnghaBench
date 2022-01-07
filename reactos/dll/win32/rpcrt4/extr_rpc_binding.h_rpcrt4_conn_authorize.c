
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* authorize ) (TYPE_2__*,int ,unsigned char*,unsigned int,unsigned char*,unsigned int*) ;} ;
typedef TYPE_2__ RpcConnection ;
typedef int RPC_STATUS ;
typedef int BOOL ;


 int stub1 (TYPE_2__*,int ,unsigned char*,unsigned int,unsigned char*,unsigned int*) ;

__attribute__((used)) static inline RPC_STATUS rpcrt4_conn_authorize(
    RpcConnection *conn, BOOL first_time, unsigned char *in_buffer,
    unsigned int in_len, unsigned char *out_buffer, unsigned int *out_len)
{
    return conn->ops->authorize(conn, first_time, in_buffer, in_len, out_buffer, out_len);
}
