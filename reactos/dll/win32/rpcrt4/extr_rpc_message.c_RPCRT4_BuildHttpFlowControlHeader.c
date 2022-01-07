
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UUID ;
typedef int ULONG ;
struct TYPE_4__ {int http; } ;
typedef TYPE_1__ RpcPktHdr ;
typedef scalar_t__ BOOL ;


 int NDR_LOCAL_DATA_REPRESENTATION ;
 TYPE_1__* RPCRT4_BuildHttpHeader (int ,int,int,int) ;
 int WRITE_HTTP_PAYLOAD_FIELD_FLOW_CONTROL (char*,int ,int ,int const) ;
 int WRITE_HTTP_PAYLOAD_FIELD_UINT32 (char*,int,int) ;

RpcPktHdr *RPCRT4_BuildHttpFlowControlHeader(BOOL server, ULONG bytes_transmitted,
                                             ULONG flow_control_increment,
                                             const UUID *pipe_uuid)
{
  RpcPktHdr *header;
  char *payload;

  header = RPCRT4_BuildHttpHeader(NDR_LOCAL_DATA_REPRESENTATION, 0x2, 2,
                                  5 * sizeof(ULONG) + sizeof(UUID));
  if (!header) return ((void*)0);
  payload = (char *)(&header->http+1);

  WRITE_HTTP_PAYLOAD_FIELD_UINT32(payload, 0x0000000d, (server ? 0x0 : 0x3));

  WRITE_HTTP_PAYLOAD_FIELD_FLOW_CONTROL(payload, bytes_transmitted,
                                        flow_control_increment, *pipe_uuid);
  return header;
}
