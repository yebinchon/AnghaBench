
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 int get16 (int *) ;
 int get32 (int *) ;
 int skip (int *,int) ;
 int stbi_rewind (int *) ;

__attribute__((used)) static int stbi_psd_info(stbi *s, int *x, int *y, int *comp)
{
   int channelCount;
   if (get32(s) != 0x38425053) {
       stbi_rewind( s );
       return 0;
   }
   if (get16(s) != 1) {
       stbi_rewind( s );
       return 0;
   }
   skip(s, 6);
   channelCount = get16(s);
   if (channelCount < 0 || channelCount > 16) {
       stbi_rewind( s );
       return 0;
   }
   *y = get32(s);
   *x = get32(s);
   if (get16(s) != 8) {
       stbi_rewind( s );
       return 0;
   }
   if (get16(s) != 3) {
       stbi_rewind( s );
       return 0;
   }
   *comp = 4;
   return 1;
}
