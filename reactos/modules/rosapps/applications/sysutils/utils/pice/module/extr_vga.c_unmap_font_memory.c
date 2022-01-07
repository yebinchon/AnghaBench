
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRAPHICS ;
 int GRREGENABLESETRESET ;
 int GRREGMISC ;
 int GRREGREADMAPSEL ;
 int GRREGWRMODE ;
 int SEQUENCER ;
 int SQREGMAPMASK ;
 int SQREGMEMORY ;
 int oldgraphicsmisc ;
 int oldgraphicsmode ;
 int oldgraphicsreadmapsel ;
 int oldgraphicssetresetenable ;
 int oldsqregmapmask ;
 int oldsqregmemory ;
 int write_vga_reg (int ,int ,int ) ;

void unmap_font_memory(void)
{
 write_vga_reg(GRAPHICS,GRREGENABLESETRESET,oldgraphicssetresetenable);
 write_vga_reg(GRAPHICS,GRREGWRMODE,oldgraphicsmode);
 write_vga_reg(GRAPHICS,GRREGREADMAPSEL,oldgraphicsreadmapsel);
 write_vga_reg(GRAPHICS,GRREGMISC, oldgraphicsmisc);
 write_vga_reg(SEQUENCER,SQREGMAPMASK, oldsqregmapmask);
 write_vga_reg(SEQUENCER,SQREGMEMORY, oldsqregmemory);
}
