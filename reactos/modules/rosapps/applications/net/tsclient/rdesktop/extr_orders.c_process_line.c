
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int colour; } ;
struct TYPE_5__ {int opcode; TYPE_2__ pen; int endy; int endx; int starty; int startx; int bgcolour; int mixmode; } ;
typedef int STREAM ;
typedef int RDPCLIENT ;
typedef TYPE_1__ LINE_ORDER ;
typedef int BOOL ;


 int DEBUG (char*) ;
 int error (char*,int) ;
 int in_uint16_le (int ,int ) ;
 int in_uint8 (int ,int) ;
 int rdp_in_colour (int ,int *) ;
 int rdp_in_coord (int ,int *,int ) ;
 int rdp_parse_pen (int ,TYPE_2__*,int) ;
 int ui_line (int *,int,int ,int ,int ,int ,TYPE_2__*) ;

__attribute__((used)) static void
process_line(RDPCLIENT * This, STREAM s, LINE_ORDER * os, uint32 present, BOOL delta)
{
 if (present & 0x0001)
  in_uint16_le(s, os->mixmode);

 if (present & 0x0002)
  rdp_in_coord(s, &os->startx, delta);

 if (present & 0x0004)
  rdp_in_coord(s, &os->starty, delta);

 if (present & 0x0008)
  rdp_in_coord(s, &os->endx, delta);

 if (present & 0x0010)
  rdp_in_coord(s, &os->endy, delta);

 if (present & 0x0020)
  rdp_in_colour(s, &os->bgcolour);

 if (present & 0x0040)
  in_uint8(s, os->opcode);

 rdp_parse_pen(s, &os->pen, present >> 7);

 DEBUG(("LINE(op=0x%x,sx=%d,sy=%d,dx=%d,dy=%d,fg=0x%x)\n",
        os->opcode, os->startx, os->starty, os->endx, os->endy, os->pen.colour));

 if (os->opcode < 0x01 || os->opcode > 0x10)
 {
  error("bad ROP2 0x%x\n", os->opcode);
  return;
 }




 ui_line(This, os->opcode, os->startx, os->starty, os->endx, os->endy, &os->pen);

}
