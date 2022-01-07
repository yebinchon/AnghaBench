
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int fast_chunk ;


 int assert (int) ;
 int make_converted_fastchunk (int *,int,int,int,int *,int *) ;

void make_map_segment_for_superchunk_preconvert(int chunk_x, int chunk_y, int segment, fast_chunk *fc_table[4][4], uint8 sv_blocktype[34][34][18], uint8 sv_lighting[34][34][18])
{
   int a,b;
   assert((chunk_x & 1) == 0);
   assert((chunk_y & 1) == 0);
   for (b=-1; b < 3; ++b) {
      for (a=-1; a < 3; ++a) {
         int xo = a*16+1;
         int yo = b*16+1;
         int x,y;
         fast_chunk *fc = fc_table[b+1][a+1];
         for (y=0; y < 16; ++y)
            for (x=0; x < 16; ++x)
               if (xo+x >= 0 && xo+x < 34 && yo+y >= 0 && yo+y < 34)
                  make_converted_fastchunk(fc,x,y, segment, sv_blocktype[xo+x][yo+y], sv_lighting[xo+x][yo+y]);
      }
   }
}
