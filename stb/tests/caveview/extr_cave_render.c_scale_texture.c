
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int TEX_SIZE ;
 int assert (int) ;
 int** texture ;

void scale_texture(unsigned char *src, int x, int y, int w, int h)
{
   int i,j,k;
   assert(w == 256 && h == 256);
   for (j=0; j < TEX_SIZE; ++j) {
      for (i=0; i < TEX_SIZE; ++i) {
         uint32 val=0;
         for (k=0; k < 4; ++k) {
            val >>= 8;
            val += src[ 4*(x+(i>>2)) + 4*w*(y+(j>>2)) + k]<<24;
         }
         texture[j][i] = val;
      }
   }
}
