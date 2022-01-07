
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;


 int GR_MODE_COPY ;
 int GrFillRect (int ,int ,int,int,int,int) ;
 int GrSetGCForeground (int ,int) ;
 int GrSetGCMode (int ,int ) ;
 int g_gc ;
 int * g_ops ;
 int g_wnd ;
 int unimpl (char*,int) ;

void ui_destblt(uint8 opcode, int x, int y, int cx, int cy)
{
  uint32 op;

  if (opcode == 0)
  {
    GrSetGCForeground(g_gc, 0);
    opcode = 12;
  }
  else if (opcode == 5)
  {
    GrSetGCForeground(g_gc, 0xffffffff);
    opcode = 6;
  }
  else if (opcode == 15)
  {
    GrSetGCForeground(g_gc, 0xffffffff);
    opcode = 12;
  }
  if (opcode == 12 || opcode == 6)
  {
    op = g_ops[opcode];
    GrSetGCMode(g_gc, op);
    GrFillRect(g_wnd, g_gc, x, y, cx, cy);
    GrSetGCMode(g_gc, GR_MODE_COPY);
  }
  else
  {
    unimpl("opcode %d in ui_destblt\n", opcode);
  }
}
