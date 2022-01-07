
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int flags; int num_data_items; } ;
struct TYPE_5__ {TYPE_1__ http; } ;
typedef TYPE_2__ RpcPktHdr ;
typedef int RPC_STATUS ;


 int ERR (char*,int) ;
 scalar_t__ GET_HTTP_PAYLOAD_FIELD_DATA (unsigned char*) ;
 int READ_HTTP_PAYLOAD_FIELD_TYPE (unsigned char*) ;
 int RPC_S_OK ;
 int RPC_S_PROTOCOL_ERROR ;

RPC_STATUS RPCRT4_ParseHttpPrepareHeader1(RpcPktHdr *header,
                                          unsigned char *data, ULONG *field1)
{
  ULONG type;
  if (header->http.flags != 0x0)
  {
    ERR("invalid flags 0x%x\n", header->http.flags);
    return RPC_S_PROTOCOL_ERROR;
  }
  if (header->http.num_data_items != 1)
  {
    ERR("invalid number of data items %d\n", header->http.num_data_items);
    return RPC_S_PROTOCOL_ERROR;
  }
  type = READ_HTTP_PAYLOAD_FIELD_TYPE(data);
  if (type != 0x00000002)
  {
    ERR("invalid type 0x%08x\n", type);
    return RPC_S_PROTOCOL_ERROR;
  }
  *field1 = *(ULONG *)GET_HTTP_PAYLOAD_FIELD_DATA(data);
  return RPC_S_OK;
}
