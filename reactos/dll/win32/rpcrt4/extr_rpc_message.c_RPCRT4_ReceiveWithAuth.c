
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_18__ {int ptype; scalar_t__ frag_len; scalar_t__ auth_len; unsigned short flags; } ;
struct TYPE_17__ {scalar_t__ BufferLength; int * Buffer; } ;
struct TYPE_15__ {scalar_t__ alloc_hint; } ;
struct TYPE_14__ {scalar_t__ alloc_hint; } ;
struct TYPE_16__ {TYPE_7__ common; TYPE_2__ request; TYPE_1__ response; } ;
typedef TYPE_3__ RpcPktHdr ;
typedef int RpcConnection ;
typedef int RpcAuthVerifier ;
typedef scalar_t__ RPC_STATUS ;
typedef TYPE_4__* PRPC_MESSAGE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_OUTOFMEMORY ;
 int GetProcessHeap () ;
 unsigned char* HeapAlloc (int ,int ,unsigned int) ;
 int HeapFree (int ,int ,void*) ;
 int * I_RpcAllocate (scalar_t__) ;
 int I_RpcFree (int *) ;
 scalar_t__ I_RpcReAllocateBuffer (TYPE_4__*) ;


 int RPCRT4_FreeHeader (TYPE_3__*) ;
 scalar_t__ RPCRT4_GetHeaderSize (TYPE_3__*) ;
 int RPCRT4_SetThreadCurrentConnection (int *) ;
 scalar_t__ RPCRT4_receive_fragment (int *,TYPE_3__**,void**) ;
 unsigned int RPC_AUTH_VERIFIER_LEN (TYPE_7__*) ;
 unsigned short RPC_FLG_FIRST ;
 int RPC_FLG_LAST ;
 scalar_t__ RPC_S_OK ;
 scalar_t__ RPC_S_OUT_OF_RESOURCES ;
 scalar_t__ RPC_S_PROTOCOL_ERROR ;
 int SECURE_PACKET_RECEIVE ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int WARN (char*,unsigned int,...) ;
 int memcpy (unsigned char*,unsigned char*,unsigned int) ;
 int packet_does_auth_negotiation (TYPE_3__*) ;
 scalar_t__ rpcrt4_conn_is_authorized (int *) ;
 scalar_t__ rpcrt4_conn_secure_packet (int *,int ,TYPE_3__*,scalar_t__,unsigned char*,scalar_t__,int *,unsigned char*,unsigned int) ;

RPC_STATUS RPCRT4_ReceiveWithAuth(RpcConnection *Connection, RpcPktHdr **Header,
                                  PRPC_MESSAGE pMsg,
                                  unsigned char **auth_data_out,
                                  ULONG *auth_length_out)
{
  RPC_STATUS status;
  DWORD hdr_length;
  unsigned short first_flag;
  ULONG data_length;
  ULONG buffer_length;
  ULONG auth_length = 0;
  unsigned char *auth_data = ((void*)0);
  RpcPktHdr *CurrentHeader = ((void*)0);
  void *payload = ((void*)0);

  *Header = ((void*)0);
  pMsg->Buffer = ((void*)0);
  if (auth_data_out) *auth_data_out = ((void*)0);
  if (auth_length_out) *auth_length_out = 0;

  TRACE("(%p, %p, %p, %p)\n", Connection, Header, pMsg, auth_data_out);

  RPCRT4_SetThreadCurrentConnection(Connection);

  status = RPCRT4_receive_fragment(Connection, Header, &payload);
  if (status != RPC_S_OK) goto fail;

  hdr_length = RPCRT4_GetHeaderSize(*Header);


  switch ((*Header)->common.ptype) {
  case 128:
    pMsg->BufferLength = (*Header)->response.alloc_hint;
    break;
  case 129:
    pMsg->BufferLength = (*Header)->request.alloc_hint;
    break;
  default:
    pMsg->BufferLength = (*Header)->common.frag_len - hdr_length - RPC_AUTH_VERIFIER_LEN(&(*Header)->common);
  }

  TRACE("buffer length = %u\n", pMsg->BufferLength);

  pMsg->Buffer = I_RpcAllocate(pMsg->BufferLength);
  if (!pMsg->Buffer)
  {
    status = ERROR_OUTOFMEMORY;
    goto fail;
  }

  first_flag = RPC_FLG_FIRST;
  auth_length = (*Header)->common.auth_len;
  if (auth_length) {
    auth_data = HeapAlloc(GetProcessHeap(), 0, RPC_AUTH_VERIFIER_LEN(&(*Header)->common));
    if (!auth_data) {
      status = RPC_S_OUT_OF_RESOURCES;
      goto fail;
    }
  }
  CurrentHeader = *Header;
  buffer_length = 0;
  while (TRUE)
  {
    unsigned int header_auth_len = RPC_AUTH_VERIFIER_LEN(&CurrentHeader->common);



    if ((CurrentHeader->common.frag_len < hdr_length) ||
        (CurrentHeader->common.frag_len - hdr_length < header_auth_len)) {
      WARN("frag_len %d too small for hdr_length %d and auth_len %d\n",
        CurrentHeader->common.frag_len, hdr_length, CurrentHeader->common.auth_len);
      status = RPC_S_PROTOCOL_ERROR;
      goto fail;
    }

    if (CurrentHeader->common.auth_len != auth_length) {
      WARN("auth_len header field changed from %d to %d\n",
        auth_length, CurrentHeader->common.auth_len);
      status = RPC_S_PROTOCOL_ERROR;
      goto fail;
    }

    if ((CurrentHeader->common.flags & RPC_FLG_FIRST) != first_flag) {
      TRACE("invalid packet flags\n");
      status = RPC_S_PROTOCOL_ERROR;
      goto fail;
    }

    data_length = CurrentHeader->common.frag_len - hdr_length - header_auth_len;
    if (data_length + buffer_length > pMsg->BufferLength) {
      TRACE("allocation hint exceeded, new buffer length = %d\n",
        data_length + buffer_length);
      pMsg->BufferLength = data_length + buffer_length;
      status = I_RpcReAllocateBuffer(pMsg);
      if (status != RPC_S_OK) goto fail;
    }

    memcpy((unsigned char *)pMsg->Buffer + buffer_length, payload, data_length);

    if (header_auth_len) {
      if (header_auth_len < sizeof(RpcAuthVerifier) ||
          header_auth_len > RPC_AUTH_VERIFIER_LEN(&(*Header)->common)) {
        WARN("bad auth verifier length %d\n", header_auth_len);
        status = RPC_S_PROTOCOL_ERROR;
        goto fail;
      }






      memcpy(auth_data, (unsigned char *)payload + data_length, header_auth_len);



      if (!packet_does_auth_negotiation(*Header) && rpcrt4_conn_is_authorized(Connection))
      {
        status = rpcrt4_conn_secure_packet(Connection, SECURE_PACKET_RECEIVE,
            CurrentHeader, hdr_length,
            (unsigned char *)pMsg->Buffer + buffer_length, data_length,
            (RpcAuthVerifier *)auth_data,
            auth_data + sizeof(RpcAuthVerifier),
            header_auth_len - sizeof(RpcAuthVerifier));
        if (status != RPC_S_OK) goto fail;
      }
    }

    buffer_length += data_length;
    if (!(CurrentHeader->common.flags & RPC_FLG_LAST)) {
      TRACE("next header\n");

      if (*Header != CurrentHeader)
      {
          RPCRT4_FreeHeader(CurrentHeader);
          CurrentHeader = ((void*)0);
      }
      HeapFree(GetProcessHeap(), 0, payload);
      payload = ((void*)0);

      status = RPCRT4_receive_fragment(Connection, &CurrentHeader, &payload);
      if (status != RPC_S_OK) goto fail;

      first_flag = 0;
    } else {
      break;
    }
  }
  pMsg->BufferLength = buffer_length;


  status = RPC_S_OK;

fail:
  RPCRT4_SetThreadCurrentConnection(((void*)0));
  if (CurrentHeader != *Header)
    RPCRT4_FreeHeader(CurrentHeader);
  if (status != RPC_S_OK) {
    I_RpcFree(pMsg->Buffer);
    pMsg->Buffer = ((void*)0);
    RPCRT4_FreeHeader(*Header);
    *Header = ((void*)0);
  }
  if (auth_data_out && status == RPC_S_OK) {
    *auth_length_out = auth_length;
    *auth_data_out = auth_data;
  }
  else
    HeapFree(GetProcessHeap(), 0, auth_data);
  HeapFree(GetProcessHeap(), 0, payload);
  return status;
}
