
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dwBufferLength; } ;
struct TYPE_7__ {TYPE_1__ inet_buffers; } ;
struct TYPE_6__ {int cancel_event; TYPE_3__* async_data; int out_request; } ;
typedef TYPE_2__ RpcConnection_http ;
typedef int RpcConnection ;
typedef scalar_t__ RPC_STATUS ;
typedef int BOOL ;


 int IRF_ASYNC ;
 int InternetQueryDataAvailable (int ,int *,int ,int ) ;
 scalar_t__ RPC_S_OK ;
 int prepare_async_request (TYPE_3__*) ;
 scalar_t__ wait_async_request (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int rpcrt4_ncacn_http_wait_for_incoming_data(RpcConnection *Connection)
{
  RpcConnection_http *httpc = (RpcConnection_http *) Connection;
  BOOL ret;
  RPC_STATUS status;

  prepare_async_request(httpc->async_data);
  ret = InternetQueryDataAvailable(httpc->out_request,
    &httpc->async_data->inet_buffers.dwBufferLength, IRF_ASYNC, 0);
  status = wait_async_request(httpc->async_data, ret, httpc->cancel_event);
  return status == RPC_S_OK ? 0 : -1;
}
