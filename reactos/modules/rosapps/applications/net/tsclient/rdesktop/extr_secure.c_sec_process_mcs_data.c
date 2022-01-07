
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_8__ {int* p; int* end; } ;
typedef TYPE_1__* STREAM ;
typedef int RDPCLIENT ;





 int in_uint16_le (TYPE_1__*,int) ;
 int in_uint8 (TYPE_1__*,int) ;
 int in_uint8s (TYPE_1__*,int) ;
 int sec_process_crypt_info (int *,TYPE_1__*) ;
 int sec_process_srv_info (int *,TYPE_1__*) ;
 int unimpl (char*,int) ;

void
sec_process_mcs_data(RDPCLIENT * This, STREAM s)
{
 uint16 tag, length;
 uint8 *next_tag;
 uint8 len;

 in_uint8s(s, 21);
 in_uint8(s, len);
 if (len & 0x80)
  in_uint8(s, len);

 while (s->p < s->end)
 {
  in_uint16_le(s, tag);
  in_uint16_le(s, length);

  if (length <= 4)
   return;

  next_tag = s->p + length - 4;

  switch (tag)
  {
   case 128:
    sec_process_srv_info(This, s);
    break;

   case 129:
    sec_process_crypt_info(This, s);
    break;

   case 130:



    break;

   default:
    unimpl("response tag 0x%x\n", tag);
  }

  s->p = next_tag;
 }
}
