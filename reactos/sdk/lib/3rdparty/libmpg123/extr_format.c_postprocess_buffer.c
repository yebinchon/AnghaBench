
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dec_enc; int encoding; } ;
struct TYPE_5__ {int buffer; TYPE_1__ af; } ;
typedef TYPE_2__ mpg123_handle ;
 int chop_fourth_byte (int *) ;
 int conv_s16_to_f32 (int *) ;
 int conv_s16_to_s32 (int *) ;
 int conv_s16_to_u16 (int *) ;
 int conv_s32_to_u32 (int *) ;

void postprocess_buffer(mpg123_handle *fr)
{






 switch(fr->af.dec_enc)
 {

 case 131:
  switch(fr->af.encoding)
  {
  case 128:
   conv_s32_to_u32(&fr->buffer);
  break;
  case 129:
   conv_s32_to_u32(&fr->buffer);
   chop_fourth_byte(&fr->buffer);
  break;
  case 132:
   chop_fourth_byte(&fr->buffer);
  break;
  }
 break;


 case 133:
  switch(fr->af.encoding)
  {
  case 130:
   conv_s16_to_u16(&fr->buffer);
  break;

  case 134:
   conv_s16_to_f32(&fr->buffer);
  break;


  case 131:
   conv_s16_to_s32(&fr->buffer);
  break;
  case 128:
   conv_s16_to_s32(&fr->buffer);
   conv_s32_to_u32(&fr->buffer);
  break;
  case 129:
   conv_s16_to_s32(&fr->buffer);
   conv_s32_to_u32(&fr->buffer);
   chop_fourth_byte(&fr->buffer);
  break;
  case 132:
   conv_s16_to_s32(&fr->buffer);
   chop_fourth_byte(&fr->buffer);
  break;

  }
 break;

 }
}
