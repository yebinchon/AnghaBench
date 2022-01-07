
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int * PUCHAR ;


 int FONTENTRIES ;
 int map_font_memory () ;
 int * pFontBufferVga ;
 int unmap_font_memory () ;

void save_font(UCHAR* graph_table)
{
 PUCHAR FontBase = pFontBufferVga;
 int i,j;
 map_font_memory();

 for (i=0; i < FONTENTRIES; i++)
  for (j=0; j < 16; j++)
    graph_table[i*16+j] = FontBase[i*32+j];

 unmap_font_memory();
}
