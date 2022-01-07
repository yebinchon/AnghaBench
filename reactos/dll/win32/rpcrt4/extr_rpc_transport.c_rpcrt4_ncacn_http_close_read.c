
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RpcConnection ;


 int rpcrt4_ncacn_http_close (int *) ;

__attribute__((used)) static void rpcrt4_ncacn_http_close_read(RpcConnection *conn)
{
    rpcrt4_ncacn_http_close(conn);
}
