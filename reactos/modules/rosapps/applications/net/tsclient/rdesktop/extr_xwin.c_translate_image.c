
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_17__ {int depth; int bpp; scalar_t__ no_translate_image; } ;
struct TYPE_18__ {int server_depth; TYPE_1__ xwin; } ;
typedef TYPE_2__ RDPCLIENT ;


 int translate15to16 (TYPE_2__*,int *,int *,int *) ;
 int translate15to24 (TYPE_2__*,int *,int *,int *) ;
 int translate15to32 (TYPE_2__*,int *,int *,int *) ;
 int translate16to16 (TYPE_2__*,int *,int *,int *) ;
 int translate16to24 (TYPE_2__*,int *,int *,int *) ;
 int translate16to32 (TYPE_2__*,int *,int *,int *) ;
 int translate24to16 (TYPE_2__*,int *,int *,int *) ;
 int translate24to24 (TYPE_2__*,int *,int *,int *) ;
 int translate24to32 (TYPE_2__*,int *,int *,int *) ;
 int translate8to16 (TYPE_2__*,int *,int *,int *) ;
 int translate8to24 (TYPE_2__*,int *,int *,int *) ;
 int translate8to32 (TYPE_2__*,int *,int *,int *) ;
 int translate8to8 (TYPE_2__*,int *,int *,int *) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static uint8 *
translate_image(RDPCLIENT * This, int width, int height, uint8 * data)
{
 int size;
 uint8 *out;
 uint8 *end;
 if (This->xwin.no_translate_image)
 {
  if ((This->xwin.depth == 15 && This->server_depth == 15) ||
      (This->xwin.depth == 16 && This->server_depth == 16) ||
      (This->xwin.depth == 24 && This->server_depth == 24))
   return data;
 }

 size = width * height * (This->xwin.bpp / 8);
 out = (uint8 *) xmalloc(size);
 end = out + size;

 switch (This->server_depth)
 {
  case 24:
   switch (This->xwin.bpp)
   {
    case 32:
     translate24to32(This, data, out, end);
     break;
    case 24:
     translate24to24(This, data, out, end);
     break;
    case 16:
     translate24to16(This, data, out, end);
     break;
   }
   break;
  case 16:
   switch (This->xwin.bpp)
   {
    case 32:
     translate16to32(This, (uint16 *) data, out, end);
     break;
    case 24:
     translate16to24(This, (uint16 *) data, out, end);
     break;
    case 16:
     translate16to16(This, (uint16 *) data, out, end);
     break;
   }
   break;
  case 15:
   switch (This->xwin.bpp)
   {
    case 32:
     translate15to32(This, (uint16 *) data, out, end);
     break;
    case 24:
     translate15to24(This, (uint16 *) data, out, end);
     break;
    case 16:
     translate15to16(This, (uint16 *) data, out, end);
     break;
   }
   break;
  case 8:
   switch (This->xwin.bpp)
   {
    case 8:
     translate8to8(This, data, out, end);
     break;
    case 16:
     translate8to16(This, data, out, end);
     break;
    case 24:
     translate8to24(This, data, out, end);
     break;
    case 32:
     translate8to32(This, data, out, end);
     break;
   }
   break;
 }
 return out;
}
