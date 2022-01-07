
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int GR_MODE_COPY ;
 int GrCopyArea (int ,int ,int,int,int,int,int ,int,int,int ) ;
 int g_gc_clean ;
 int g_wnd ;
 int unimpl (char*,int) ;
 scalar_t__ warp_coords (int*,int*,int*,int*,int*,int*) ;

void ui_screenblt(uint8 opcode, int x, int y, int cx, int cy,
                  int srcx, int srcy)
{
  if (opcode == 12)
  {
    if (warp_coords(&x, &y, &cx, &cy, &srcx, &srcy))
    {
      GrCopyArea(g_wnd, g_gc_clean, x, y, cx, cy, g_wnd, srcx, srcy,
                 GR_MODE_COPY);
    }
  }
  else
  {
    unimpl("opcode %d in ui_screenblt\n", opcode);
  }
}
