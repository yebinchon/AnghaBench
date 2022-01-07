
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int RpcPktHdr ;
typedef int RpcConnection ;
typedef scalar_t__ RPC_STATUS ;
typedef int BYTE ;


 int FALSE ;
 int GetProcessHeap () ;
 unsigned char* HeapAlloc (int ,int ,unsigned int) ;
 int HeapFree (int ,int ,unsigned char*) ;
 int NDR_LOCAL_DATA_REPRESENTATION ;
 int * RPCRT4_BuildAuthHeader (int ) ;
 int RPCRT4_FreeHeader (int *) ;
 scalar_t__ RPCRT4_SendWithAuth (int *,int *,int *,int ,unsigned char*,unsigned int) ;
 scalar_t__ RPC_S_OUT_OF_RESOURCES ;
 int TRACE (char*,int *,int ) ;
 scalar_t__ rpcrt4_conn_authorize (int *,int ,int *,int ,unsigned char*,unsigned int*) ;

RPC_STATUS RPCRT4_ClientConnectionAuth(RpcConnection* conn, BYTE *challenge,
                                       ULONG count)
{
  RpcPktHdr *resp_hdr;
  RPC_STATUS status;
  unsigned char *out_buffer;
  unsigned int out_len = 0;

  TRACE("challenge %s, %d bytes\n", challenge, count);

  status = rpcrt4_conn_authorize(conn, FALSE, challenge, count, ((void*)0), &out_len);
  if (status) return status;
  out_buffer = HeapAlloc(GetProcessHeap(), 0, out_len);
  if (!out_buffer) return RPC_S_OUT_OF_RESOURCES;
  status = rpcrt4_conn_authorize(conn, FALSE, challenge, count, out_buffer, &out_len);
  if (status) return status;

  resp_hdr = RPCRT4_BuildAuthHeader(NDR_LOCAL_DATA_REPRESENTATION);

  if (resp_hdr)
    status = RPCRT4_SendWithAuth(conn, resp_hdr, ((void*)0), 0, out_buffer, out_len);
  else
    status = RPC_S_OUT_OF_RESOURCES;

  HeapFree(GetProcessHeap(), 0, out_buffer);
  RPCRT4_FreeHeader(resp_hdr);

  return status;
}
