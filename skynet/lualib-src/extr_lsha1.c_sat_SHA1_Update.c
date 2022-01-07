
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int* count; int const* buffer; int state; } ;
typedef TYPE_1__ SHA1_CTX ;


 int SHA1_Transform (int ,int const*) ;
 int SHAPrintContext (TYPE_1__*,char*) ;
 int memcpy (int const*,int const*,size_t const) ;

__attribute__((used)) static void sat_SHA1_Update(SHA1_CTX* context, const uint8_t* data, const size_t len)
{
 size_t i, j;





 j = (context->count[0] >> 3) & 63;
 if ((context->count[0] += len << 3) < (len << 3)) context->count[1]++;
 context->count[1] += (len >> 29);
 if ((j + len) > 63) {
  memcpy(&context->buffer[j], data, (i = 64-j));
  SHA1_Transform(context->state, context->buffer);
  for ( ; i + 63 < len; i += 64) {
   SHA1_Transform(context->state, data + i);
  }
  j = 0;
 }
 else i = 0;
 memcpy(&context->buffer[j], &data[i], len - i);




}
