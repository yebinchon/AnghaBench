
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cancel_event; int async_data; int out_request; } ;
typedef TYPE_1__ RpcConnection_http ;
typedef int RpcConnection ;


 int rpcrt4_http_async_read (int ,int ,int ,void*,unsigned int) ;

__attribute__((used)) static int rpcrt4_ncacn_http_read(RpcConnection *Connection,
                                void *buffer, unsigned int count)
{
  RpcConnection_http *httpc = (RpcConnection_http *) Connection;
  return rpcrt4_http_async_read(httpc->out_request, httpc->async_data, httpc->cancel_event, buffer, count);
}
