
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_4__ {scalar_t__ host_be; scalar_t__ xserver_be; } ;
struct TYPE_5__ {TYPE_1__ xwin; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int PixelColour ;


 int BOUT16 (int *,int ) ;
 int BSWAP16 (int ) ;
 int LOUT16 (int *,int ) ;
 int MAKECOLOUR (int ) ;
 int SPLITCOLOUR16 (int ,int ) ;

__attribute__((used)) static void
translate16to16(RDPCLIENT * This, const uint16 * data, uint8 * out, uint8 * end)
{
 uint16 pixel;
 uint16 value;
 PixelColour pc;

 if (This->xwin.xserver_be)
 {
  if (This->xwin.host_be)
  {
   while (out < end)
   {
    pixel = *(data++);
    BSWAP16(pixel);
    SPLITCOLOUR16(pixel, pc);
    value = MAKECOLOUR(pc);
    BOUT16(out, value);
   }
  }
  else
  {
   while (out < end)
   {
    pixel = *(data++);
    SPLITCOLOUR16(pixel, pc);
    value = MAKECOLOUR(pc);
    BOUT16(out, value);
   }
  }
 }
 else
 {
  if (This->xwin.host_be)
  {
   while (out < end)
   {
    pixel = *(data++);
    BSWAP16(pixel);
    SPLITCOLOUR16(pixel, pc);
    value = MAKECOLOUR(pc);
    LOUT16(out, value);
   }
  }
  else
  {
   while (out < end)
   {
    pixel = *(data++);
    SPLITCOLOUR16(pixel, pc);
    value = MAKECOLOUR(pc);
    LOUT16(out, value);
   }
  }
 }
}
