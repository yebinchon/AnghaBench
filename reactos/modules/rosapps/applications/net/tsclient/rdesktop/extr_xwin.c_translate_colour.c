
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_9__ {int blue; int green; int red; } ;
struct TYPE_8__ {int server_depth; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef TYPE_2__ PixelColour ;


 int MAKECOLOUR (TYPE_2__) ;
 int SPLITCOLOUR15 (int ,TYPE_2__) ;
 int SPLITCOLOUR16 (int ,TYPE_2__) ;
 int SPLITCOLOUR24 (int ,TYPE_2__) ;

__attribute__((used)) static uint32
translate_colour(RDPCLIENT * This, uint32 colour)
{
 PixelColour pc;
 switch (This->server_depth)
 {
  case 15:
   SPLITCOLOUR15(colour, pc);
   break;
  case 16:
   SPLITCOLOUR16(colour, pc);
   break;
  case 24:
   SPLITCOLOUR24(colour, pc);
   break;
  default:

   pc.red = 0;
   pc.green = 0;
   pc.blue = 0;
   break;
 }
 return MAKECOLOUR(pc);
}
