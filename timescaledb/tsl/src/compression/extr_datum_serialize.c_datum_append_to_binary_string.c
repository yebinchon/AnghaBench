
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bytea ;
struct TYPE_5__ {int send_flinfo; scalar_t__ use_binary_send; } ;
typedef int StringInfo ;
typedef TYPE_1__ DatumSerializer ;
typedef int Datum ;
typedef scalar_t__ BinaryStringEncoding ;


 int ERROR ;
 scalar_t__ MESSAGE_SPECIFIES_ENCODING ;
 char* OutputFunctionCall (int *,int ) ;
 int * SendFunctionCall (int *,int ) ;
 int VARDATA (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 scalar_t__ datum_serializer_binary_string_encoding (TYPE_1__*) ;
 int elog (int ,char*) ;
 int load_send_fn (TYPE_1__*) ;
 int pq_sendbyte (int ,scalar_t__) ;
 int pq_sendbytes (int ,int ,int ) ;
 int pq_sendint32 (int ,int ) ;
 int pq_sendstring (int ,char*) ;

void
datum_append_to_binary_string(DatumSerializer *serializer, BinaryStringEncoding encoding,
         StringInfo buffer, Datum datum)
{
 load_send_fn(serializer);

 if (encoding == MESSAGE_SPECIFIES_ENCODING)
  pq_sendbyte(buffer, serializer->use_binary_send);
 else if (encoding != datum_serializer_binary_string_encoding(serializer))
  elog(ERROR, "incorrect encoding chosen in datum_append_to_binary_string");

 if (serializer->use_binary_send)
 {
  bytea *output = SendFunctionCall(&serializer->send_flinfo, datum);
  pq_sendint32(buffer, VARSIZE_ANY_EXHDR(output));
  pq_sendbytes(buffer, VARDATA(output), VARSIZE_ANY_EXHDR(output));
 }
 else
 {
  char *output = OutputFunctionCall(&serializer->send_flinfo, datum);
  pq_sendstring(buffer, output);
 }
}
