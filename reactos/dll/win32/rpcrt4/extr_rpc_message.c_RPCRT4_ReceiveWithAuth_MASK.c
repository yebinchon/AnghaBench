#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_18__ {int ptype; scalar_t__ frag_len; scalar_t__ auth_len; unsigned short flags; } ;
struct TYPE_17__ {scalar_t__ BufferLength; int /*<<< orphan*/ * Buffer; } ;
struct TYPE_15__ {scalar_t__ alloc_hint; } ;
struct TYPE_14__ {scalar_t__ alloc_hint; } ;
struct TYPE_16__ {TYPE_7__ common; TYPE_2__ request; TYPE_1__ response; } ;
typedef  TYPE_3__ RpcPktHdr ;
typedef  int /*<<< orphan*/  RpcConnection ;
typedef  int /*<<< orphan*/  RpcAuthVerifier ;
typedef  scalar_t__ RPC_STATUS ;
typedef  TYPE_4__* PRPC_MESSAGE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
#define  PKT_REQUEST 129 
#define  PKT_RESPONSE 128 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_3__**,void**) ; 
 unsigned int FUNC10 (TYPE_7__*) ; 
 unsigned short RPC_FLG_FIRST ; 
 int RPC_FLG_LAST ; 
 scalar_t__ RPC_S_OK ; 
 scalar_t__ RPC_S_OUT_OF_RESOURCES ; 
 scalar_t__ RPC_S_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  SECURE_PACKET_RECEIVE ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC12 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,scalar_t__,unsigned char*,scalar_t__,int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 

RPC_STATUS FUNC17(RpcConnection *Connection, RpcPktHdr **Header,
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
  unsigned char *auth_data = NULL;
  RpcPktHdr *CurrentHeader = NULL;
  void *payload = NULL;

  *Header = NULL;
  pMsg->Buffer = NULL;
  if (auth_data_out) *auth_data_out = NULL;
  if (auth_length_out) *auth_length_out = 0;

  FUNC11("(%p, %p, %p, %p)\n", Connection, Header, pMsg, auth_data_out);

  FUNC8(Connection);

  status = FUNC9(Connection, Header, &payload);
  if (status != RPC_S_OK) goto fail;

  hdr_length = FUNC7(*Header);

  /* read packet body */
  switch ((*Header)->common.ptype) {
  case PKT_RESPONSE:
    pMsg->BufferLength = (*Header)->response.alloc_hint;
    break;
  case PKT_REQUEST:
    pMsg->BufferLength = (*Header)->request.alloc_hint;
    break;
  default:
    pMsg->BufferLength = (*Header)->common.frag_len - hdr_length - FUNC10(&(*Header)->common);
  }

  FUNC11("buffer length = %u\n", pMsg->BufferLength);

  pMsg->Buffer = FUNC3(pMsg->BufferLength);
  if (!pMsg->Buffer)
  {
    status = ERROR_OUTOFMEMORY;
    goto fail;
  }

  first_flag = RPC_FLG_FIRST;
  auth_length = (*Header)->common.auth_len;
  if (auth_length) {
    auth_data = FUNC1(FUNC0(), 0, FUNC10(&(*Header)->common));
    if (!auth_data) {
      status = RPC_S_OUT_OF_RESOURCES;
      goto fail;
    }
  }
  CurrentHeader = *Header;
  buffer_length = 0;
  while (TRUE)
  {
    unsigned int header_auth_len = FUNC10(&CurrentHeader->common);

    /* verify header fields */

    if ((CurrentHeader->common.frag_len < hdr_length) ||
        (CurrentHeader->common.frag_len - hdr_length < header_auth_len)) {
      FUNC12("frag_len %d too small for hdr_length %d and auth_len %d\n",
        CurrentHeader->common.frag_len, hdr_length, CurrentHeader->common.auth_len);
      status = RPC_S_PROTOCOL_ERROR;
      goto fail;
    }

    if (CurrentHeader->common.auth_len != auth_length) {
      FUNC12("auth_len header field changed from %d to %d\n",
        auth_length, CurrentHeader->common.auth_len);
      status = RPC_S_PROTOCOL_ERROR;
      goto fail;
    }

    if ((CurrentHeader->common.flags & RPC_FLG_FIRST) != first_flag) {
      FUNC11("invalid packet flags\n");
      status = RPC_S_PROTOCOL_ERROR;
      goto fail;
    }

    data_length = CurrentHeader->common.frag_len - hdr_length - header_auth_len;
    if (data_length + buffer_length > pMsg->BufferLength) {
      FUNC11("allocation hint exceeded, new buffer length = %d\n",
        data_length + buffer_length);
      pMsg->BufferLength = data_length + buffer_length;
      status = FUNC5(pMsg);
      if (status != RPC_S_OK) goto fail;
    }

    FUNC13((unsigned char *)pMsg->Buffer + buffer_length, payload, data_length);

    if (header_auth_len) {
      if (header_auth_len < sizeof(RpcAuthVerifier) ||
          header_auth_len > FUNC10(&(*Header)->common)) {
        FUNC12("bad auth verifier length %d\n", header_auth_len);
        status = RPC_S_PROTOCOL_ERROR;
        goto fail;
      }

      /* FIXME: we should accumulate authentication data for the bind,
       * bind_ack, alter_context and alter_context_response if necessary.
       * however, the details of how this is done is very sketchy in the
       * DCE/RPC spec. for all other packet types that have authentication
       * verifier data then it is just duplicated in all the fragments */
      FUNC13(auth_data, (unsigned char *)payload + data_length, header_auth_len);

      /* these packets are handled specially, not by the generic SecurePacket
       * function */
      if (!FUNC14(*Header) && FUNC15(Connection))
      {
        status = FUNC16(Connection, SECURE_PACKET_RECEIVE,
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
      FUNC11("next header\n");

      if (*Header != CurrentHeader)
      {
          FUNC6(CurrentHeader);
          CurrentHeader = NULL;
      }
      FUNC2(FUNC0(), 0, payload);
      payload = NULL;

      status = FUNC9(Connection, &CurrentHeader, &payload);
      if (status != RPC_S_OK) goto fail;

      first_flag = 0;
    } else {
      break;
    }
  }
  pMsg->BufferLength = buffer_length;

  /* success */
  status = RPC_S_OK;

fail:
  FUNC8(NULL);
  if (CurrentHeader != *Header)
    FUNC6(CurrentHeader);
  if (status != RPC_S_OK) {
    FUNC4(pMsg->Buffer);
    pMsg->Buffer = NULL;
    FUNC6(*Header);
    *Header = NULL;
  }
  if (auth_data_out && status == RPC_S_OK) {
    *auth_length_out = auth_length;
    *auth_data_out = auth_data;
  }
  else
    FUNC2(FUNC0(), 0, auth_data);
  FUNC2(FUNC0(), 0, payload);
  return status;
}