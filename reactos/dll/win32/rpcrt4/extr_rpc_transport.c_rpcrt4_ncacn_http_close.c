
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * servername; scalar_t__ cancel_event; int async_data; int * session; int * app_info; int * out_request; int * in_request; int timer_cancelled; } ;
typedef TYPE_1__ RpcConnection_http ;
typedef int RpcConnection ;


 int CloseHandle (scalar_t__) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int InternetCloseHandle (int *) ;
 int RpcHttpAsyncData_Release (int ) ;
 int SetEvent (int ) ;
 int TRACE (char*) ;

__attribute__((used)) static int rpcrt4_ncacn_http_close(RpcConnection *Connection)
{
  RpcConnection_http *httpc = (RpcConnection_http *) Connection;

  TRACE("\n");

  SetEvent(httpc->timer_cancelled);
  if (httpc->in_request)
    InternetCloseHandle(httpc->in_request);
  httpc->in_request = ((void*)0);
  if (httpc->out_request)
    InternetCloseHandle(httpc->out_request);
  httpc->out_request = ((void*)0);
  if (httpc->app_info)
    InternetCloseHandle(httpc->app_info);
  httpc->app_info = ((void*)0);
  if (httpc->session)
    InternetCloseHandle(httpc->session);
  httpc->session = ((void*)0);
  RpcHttpAsyncData_Release(httpc->async_data);
  if (httpc->cancel_event)
    CloseHandle(httpc->cancel_event);
  HeapFree(GetProcessHeap(), 0, httpc->servername);
  httpc->servername = ((void*)0);

  return 0;
}
