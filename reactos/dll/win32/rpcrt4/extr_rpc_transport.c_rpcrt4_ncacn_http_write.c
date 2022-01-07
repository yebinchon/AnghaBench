
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int last_sent_time; int in_request; } ;
typedef TYPE_1__ RpcConnection_http ;
typedef int RpcConnection ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 unsigned int GetTickCount () ;
 scalar_t__ InternetWriteFile (int ,void const*,unsigned int,int*) ;
 int TRACE (char*,int ,void const*,unsigned int,char*) ;

__attribute__((used)) static int rpcrt4_ncacn_http_write(RpcConnection *Connection,
                                 const void *buffer, unsigned int count)
{
  RpcConnection_http *httpc = (RpcConnection_http *) Connection;
  DWORD bytes_written;
  BOOL ret;

  httpc->last_sent_time = ~0U;
  ret = InternetWriteFile(httpc->in_request, buffer, count, &bytes_written);
  httpc->last_sent_time = GetTickCount();
  TRACE("%p %p %u -> %s\n", httpc->in_request, buffer, count, ret ? "TRUE" : "FALSE");
  return ret ? bytes_written : -1;
}
