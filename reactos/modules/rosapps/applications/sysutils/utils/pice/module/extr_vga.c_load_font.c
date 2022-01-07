
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int* PUCHAR ;


 int BYTESPERFONT ;
 int FONTENTRIES ;
 int map_font_memory () ;
 int* pFontBufferVga ;
 int unmap_font_memory () ;

void load_font(UCHAR* graph_table,int bEnter)
{
 PUCHAR FontBase = pFontBufferVga;
 int i,j;
 map_font_memory();

 if(bEnter)
 {





  for (i=0; i < FONTENTRIES; i++)
   for (j=0; j < 16; j++)
     FontBase[i*32+j] = graph_table[i*BYTESPERFONT+(j/2)] << (j&1);

 }
 else
 {
  for (i=0; i < FONTENTRIES; i++)
   for (j=0; j < 16; j++)
     FontBase[i*32+j] = graph_table[i*16+j];
 }

 unmap_font_memory();
}
