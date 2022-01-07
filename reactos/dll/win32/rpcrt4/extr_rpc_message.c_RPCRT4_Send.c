
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ AuthInfo; } ;
typedef int RpcPktHdr ;
typedef TYPE_1__ RpcConnection ;
typedef scalar_t__ RPC_STATUS ;


 int GetProcessHeap () ;
 unsigned char* HeapAlloc (int ,int ,unsigned int) ;
 int HeapFree (int ,int ,unsigned char*) ;
 scalar_t__ RPCRT4_SendWithAuth (TYPE_1__*,int *,void*,unsigned int,unsigned char*,unsigned int) ;
 scalar_t__ RPC_S_OK ;
 scalar_t__ RPC_S_OUT_OF_RESOURCES ;
 int TRUE ;
 scalar_t__ packet_does_auth_negotiation (int *) ;
 scalar_t__ rpcrt4_conn_authorize (TYPE_1__*,int ,int *,int ,unsigned char*,unsigned int*) ;
 int rpcrt4_conn_is_authorized (TYPE_1__*) ;

RPC_STATUS RPCRT4_Send(RpcConnection *Connection, RpcPktHdr *Header,
                       void *Buffer, unsigned int BufferLength)
{
  RPC_STATUS r;

  if (packet_does_auth_negotiation(Header) &&
      Connection->AuthInfo &&
      !rpcrt4_conn_is_authorized(Connection))
  {
      unsigned int out_size = 0;
      unsigned char *out_buffer;

      r = rpcrt4_conn_authorize(Connection, TRUE, ((void*)0), 0, ((void*)0), &out_size);
      if (r != RPC_S_OK) return r;

      out_buffer = HeapAlloc(GetProcessHeap(), 0, out_size);
      if (!out_buffer) return RPC_S_OUT_OF_RESOURCES;


      r = rpcrt4_conn_authorize(Connection, TRUE, ((void*)0), 0, out_buffer, &out_size);
      if (r == RPC_S_OK)
          r = RPCRT4_SendWithAuth(Connection, Header, Buffer, BufferLength, out_buffer, out_size);

      HeapFree(GetProcessHeap(), 0, out_buffer);
  }
  else
    r = RPCRT4_SendWithAuth(Connection, Header, Buffer, BufferLength, ((void*)0), 0);

  return r;
}
