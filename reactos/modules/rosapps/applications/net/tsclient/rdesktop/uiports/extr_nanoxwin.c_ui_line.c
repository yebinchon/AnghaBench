
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_3__ {int colour; } ;
typedef TYPE_1__ PEN ;


 int COLOR16TO32 (int) ;
 int GR_MODE_COPY ;
 int GrLine (int ,int ,int,int,int,int) ;
 int GrSetGCForeground (int ,int) ;
 int GrSetGCMode (int ,int) ;
 int g_bpp ;
 int g_gc ;
 int* g_ops ;
 int g_server_bpp ;
 int g_wnd ;
 int unimpl (char*,int) ;

void ui_line(uint8 opcode, int startx, int starty, int endx, int endy,
             PEN * pen)
{
  uint32 op;
  uint32 color;

  color = pen->colour;
  if (opcode == 5)
  {
    color = 0xffffffff;
    opcode = 6;
  }
  if (opcode == 12 || opcode == 6)
  {
    op = g_ops[opcode];
    GrSetGCMode(g_gc, op);
    if (g_server_bpp == 16 && g_bpp == 32)
    {
      color = COLOR16TO32(color);
    }
    GrSetGCForeground(g_gc, color);
    GrLine(g_wnd, g_gc, startx, starty, endx, endy);
    GrSetGCMode(g_gc, GR_MODE_COPY);
  }
  else
  {
    unimpl("opcode %d in ui_line\n", opcode);
  }
}
