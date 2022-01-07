
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef scalar_t__ ULONG ;
struct TYPE_25__ {int BufferLength; TYPE_3__* Buffer; } ;
struct TYPE_19__ {int SyntaxGUID; } ;
struct TYPE_24__ {scalar_t__ MaxTransmissionSize; int Endpoint; TYPE_13__* server_binding; int NetworkOptions; int NetworkAddr; TYPE_11__ ActiveInterface; } ;
struct TYPE_23__ {size_t num_syntaxes; TYPE_11__ abstract_syntax; int * transfer_syntaxes; } ;
struct TYPE_22__ {unsigned int num_elements; scalar_t__ max_tsize; int assoc_gid; } ;
struct TYPE_21__ {int transfer_syntax; int reason; void* result; } ;
struct TYPE_20__ {TYPE_10__* Assoc; } ;
struct TYPE_18__ {int assoc_group_id; } ;
typedef int RpcServerInterface ;
typedef TYPE_1__ RpcResult ;
typedef int RpcPktHdr ;
typedef TYPE_2__ RpcPktBindHdr ;
typedef TYPE_3__ RpcContextElement ;
typedef TYPE_4__ RpcConnection ;
typedef int RpcAuthVerifier ;
typedef scalar_t__ RPC_STATUS ;
typedef TYPE_5__ RPC_MESSAGE ;


 int ERR (char*,int,unsigned int) ;
 int FALSE ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int NDR_LOCAL_DATA_REPRESENTATION ;
 int REASON_ABSTRACT_SYNTAX_NOT_SUPPORTED ;
 int REASON_NONE ;
 int REASON_TRANSFER_SYNTAXES_NOT_SUPPORTED ;
 void* RESULT_ACCEPT ;
 void* RESULT_PROVIDER_REJECTION ;
 int * RPCRT4_BuildBindAckHeader (int ,int ,int ,int ,int ,unsigned int,TYPE_1__*) ;
 scalar_t__ RPCRT4_MakeBinding (TYPE_13__**,TYPE_4__*) ;
 scalar_t__ RPCRT4_ServerConnectionAuth (TYPE_4__*,int ,int *,scalar_t__,unsigned char**,scalar_t__*) ;
 int * RPCRT4_find_interface (int *,TYPE_11__*,int *,int ) ;
 int RPCRT4_release_server_interface (int *) ;
 int RPC_MAX_PACKET_SIZE ;
 scalar_t__ RPC_MIN_PACKET_SIZE ;
 scalar_t__ RPC_S_INVALID_BOUND ;
 scalar_t__ RPC_S_OK ;
 scalar_t__ RPC_S_OUT_OF_RESOURCES ;
 scalar_t__ RpcServerAssoc_GetAssociation (int ,int ,int ,int ,int ,TYPE_10__**) ;
 int TRACE (char*,...) ;
 int TRUE ;
 int UuidIsNil (int *,scalar_t__*) ;
 int debugstr_guid (int *) ;
 int memset (int *,int ,int) ;
 int rpcrt4_conn_get_name (TYPE_4__*) ;

__attribute__((used)) static RPC_STATUS process_bind_packet_no_send(
    RpcConnection *conn, RpcPktBindHdr *hdr, RPC_MESSAGE *msg,
    unsigned char *auth_data, ULONG auth_length, RpcPktHdr **ack_response,
    unsigned char **auth_data_out, ULONG *auth_length_out)
{
  RPC_STATUS status;
  RpcContextElement *ctxt_elem;
  unsigned int i;
  RpcResult *results;


  for (i = 0, ctxt_elem = msg->Buffer;
       i < hdr->num_elements;
       i++, ctxt_elem = (RpcContextElement *)&ctxt_elem->transfer_syntaxes[ctxt_elem->num_syntaxes])
  {
      if (((char *)ctxt_elem - (char *)msg->Buffer) > msg->BufferLength ||
          ((char *)&ctxt_elem->transfer_syntaxes[ctxt_elem->num_syntaxes] - (char *)msg->Buffer) > msg->BufferLength)
      {
          ERR("inconsistent data in packet - packet length %d, num elements %d\n",
              msg->BufferLength, hdr->num_elements);
          return RPC_S_INVALID_BOUND;
      }
  }

  if (hdr->max_tsize < RPC_MIN_PACKET_SIZE ||
      !UuidIsNil(&conn->ActiveInterface.SyntaxGUID, &status) ||
      conn->server_binding)
  {
    TRACE("packet size less than min size, or active interface syntax guid non-null\n");

    return RPC_S_INVALID_BOUND;
  }

  results = HeapAlloc(GetProcessHeap(), 0,
                      hdr->num_elements * sizeof(*results));
  if (!results)
    return RPC_S_OUT_OF_RESOURCES;

  for (i = 0, ctxt_elem = (RpcContextElement *)msg->Buffer;
       i < hdr->num_elements;
       i++, ctxt_elem = (RpcContextElement *)&ctxt_elem->transfer_syntaxes[ctxt_elem->num_syntaxes])
  {
      RpcServerInterface* sif = ((void*)0);
      unsigned int j;

      for (j = 0; !sif && j < ctxt_elem->num_syntaxes; j++)
      {
          sif = RPCRT4_find_interface(((void*)0), &ctxt_elem->abstract_syntax,
                                      &ctxt_elem->transfer_syntaxes[j], FALSE);
          if (sif)
              break;
      }
      if (sif)
      {
          RPCRT4_release_server_interface(sif);
          TRACE("accepting bind request on connection %p for %s\n", conn,
                debugstr_guid(&ctxt_elem->abstract_syntax.SyntaxGUID));
          results[i].result = RESULT_ACCEPT;
          results[i].reason = REASON_NONE;
          results[i].transfer_syntax = ctxt_elem->transfer_syntaxes[j];



          conn->ActiveInterface = ctxt_elem->abstract_syntax;
      }
      else if ((sif = RPCRT4_find_interface(((void*)0), &ctxt_elem->abstract_syntax,
                                            ((void*)0), FALSE)) != ((void*)0))
      {
          RPCRT4_release_server_interface(sif);
          TRACE("not accepting bind request on connection %p for %s - no transfer syntaxes supported\n",
                conn, debugstr_guid(&ctxt_elem->abstract_syntax.SyntaxGUID));
          results[i].result = RESULT_PROVIDER_REJECTION;
          results[i].reason = REASON_TRANSFER_SYNTAXES_NOT_SUPPORTED;
          memset(&results[i].transfer_syntax, 0, sizeof(results[i].transfer_syntax));
      }
      else
      {
          TRACE("not accepting bind request on connection %p for %s - abstract syntax not supported\n",
                conn, debugstr_guid(&ctxt_elem->abstract_syntax.SyntaxGUID));
          results[i].result = RESULT_PROVIDER_REJECTION;
          results[i].reason = REASON_ABSTRACT_SYNTAX_NOT_SUPPORTED;
          memset(&results[i].transfer_syntax, 0, sizeof(results[i].transfer_syntax));
      }
  }


  status = RPCRT4_MakeBinding(&conn->server_binding, conn);
  if (status != RPC_S_OK)
  {
      HeapFree(GetProcessHeap(), 0, results);
      return status;
  }

  status = RpcServerAssoc_GetAssociation(rpcrt4_conn_get_name(conn),
                                         conn->NetworkAddr, conn->Endpoint,
                                         conn->NetworkOptions,
                                         hdr->assoc_gid,
                                         &conn->server_binding->Assoc);
  if (status != RPC_S_OK)
  {
      HeapFree(GetProcessHeap(), 0, results);
      return status;
  }

  if (auth_length)
  {
      status = RPCRT4_ServerConnectionAuth(conn, TRUE,
                                           (RpcAuthVerifier *)auth_data,
                                           auth_length, auth_data_out,
                                           auth_length_out);
      if (status != RPC_S_OK)
      {
          HeapFree(GetProcessHeap(), 0, results);
          return status;
      }
  }

  *ack_response = RPCRT4_BuildBindAckHeader(NDR_LOCAL_DATA_REPRESENTATION,
                                            RPC_MAX_PACKET_SIZE,
                                            RPC_MAX_PACKET_SIZE,
                                            conn->server_binding->Assoc->assoc_group_id,
                                            conn->Endpoint, hdr->num_elements,
                                            results);
  HeapFree(GetProcessHeap(), 0, results);

  if (*ack_response)
      conn->MaxTransmissionSize = hdr->max_tsize;
  else
      status = RPC_S_OUT_OF_RESOURCES;

  return status;
}
