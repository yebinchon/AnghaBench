
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
 void* oldgraphicsmisc ;
 void* oldgraphicsmode ;
 void* oldgraphicsreadmapsel ;
 void* oldgraphicssetresetenable ;
 void* oldsqregmapmask ;
 void* oldsqregmemory ;
 void* read_vga_reg (int ,int ) ;
 int write_vga_reg (int ,int ,int) ;

void map_font_memory(void)
{
 oldgraphicssetresetenable = read_vga_reg(GRAPHICS, GRREGENABLESETRESET);
 oldgraphicsmode = read_vga_reg(GRAPHICS, GRREGWRMODE);
 oldgraphicsmisc = read_vga_reg(GRAPHICS, GRREGMISC);
 oldgraphicsreadmapsel = read_vga_reg(GRAPHICS, GRREGREADMAPSEL);
 oldsqregmapmask = read_vga_reg(SEQUENCER, SQREGMAPMASK);
 oldsqregmemory = read_vga_reg(SEQUENCER, SQREGMEMORY);



 write_vga_reg(GRAPHICS,GRREGENABLESETRESET,0);

 write_vga_reg(GRAPHICS,GRREGREADMAPSEL,0x02);

 write_vga_reg(GRAPHICS,GRREGWRMODE,0x00);

 write_vga_reg(GRAPHICS,GRREGMISC, 0x04);

 write_vga_reg(SEQUENCER,SQREGMAPMASK, 0x04);

 write_vga_reg(SEQUENCER,SQREGMEMORY, 0x07);
}
