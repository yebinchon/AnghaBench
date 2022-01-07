
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_7__ {int type_mod; int type_io_param; int recv_flinfo; } ;
struct TYPE_6__ {char* data; int maxlen; int len; } ;
typedef TYPE_1__ StringInfoData ;
typedef int StringInfo ;
typedef TYPE_2__ DatumDeserializer ;
typedef int Datum ;
typedef int BinaryStringEncoding ;



 int InputFunctionCall (int *,char*,int ,int ) ;

 int ReceiveFunctionCall (int *,TYPE_1__*,int ,int ) ;

 int load_recv_fn (TYPE_2__*,int) ;
 int pq_getmsgbyte (int ) ;
 char* pq_getmsgbytes (int ,int ) ;
 int pq_getmsgint32 (int ) ;
 char* pq_getmsgstring (int ) ;

Datum
binary_string_to_datum(DatumDeserializer *deserializer, BinaryStringEncoding encoding,
        StringInfo buffer)
{
 Datum res;
 bool use_binary_recv = 0;

 switch (encoding)
 {
  case 130:
   use_binary_recv = 1;
   break;
  case 128:
   use_binary_recv = 0;
   break;
  case 129:
   use_binary_recv = pq_getmsgbyte(buffer) != 0;
   break;
 }

 load_recv_fn(deserializer, use_binary_recv);

 if (use_binary_recv)
 {
  uint32 data_size = pq_getmsgint32(buffer);
  const char *bytes = pq_getmsgbytes(buffer, data_size);
  StringInfoData d = {
   .data = (char *) bytes,
   .len = data_size,
   .maxlen = data_size,
  };
  res = ReceiveFunctionCall(&deserializer->recv_flinfo,
          &d,
          deserializer->type_io_param,
          deserializer->type_mod);
 }
 else
 {
  const char *string = pq_getmsgstring(buffer);
  res = InputFunctionCall(&deserializer->recv_flinfo,
        (char *) string,
        deserializer->type_io_param,
        deserializer->type_mod);
 }
 return res;
}
