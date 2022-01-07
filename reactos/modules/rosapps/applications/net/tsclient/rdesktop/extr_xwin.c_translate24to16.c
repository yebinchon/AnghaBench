
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
typedef int uint16 ;
struct TYPE_4__ {scalar_t__ xserver_be; } ;
struct TYPE_5__ {TYPE_1__ xwin; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int PixelColour ;


 int BOUT16 (int *,int ) ;
 int LOUT16 (int *,int ) ;
 int MAKECOLOUR (int ) ;
 int SPLITCOLOUR24 (int,int ) ;

__attribute__((used)) static void
translate24to16(RDPCLIENT * This, const uint8 * data, uint8 * out, uint8 * end)
{
 uint32 pixel = 0;
 uint16 value;
 PixelColour pc;

 while (out < end)
 {
  pixel = *(data++) << 16;
  pixel |= *(data++) << 8;
  pixel |= *(data++);
  SPLITCOLOUR24(pixel, pc);
  value = MAKECOLOUR(pc);
  if (This->xwin.xserver_be)
  {
   BOUT16(out, value);
  }
  else
  {
   LOUT16(out, value);
  }
 }
}
