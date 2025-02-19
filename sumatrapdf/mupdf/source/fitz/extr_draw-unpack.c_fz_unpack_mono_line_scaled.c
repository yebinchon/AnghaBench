
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t VGMASK (unsigned char,int) ;
 int * get1_tab_255 ;
 int memcpy (unsigned char*,int ,int) ;

__attribute__((used)) static void
fz_unpack_mono_line_scaled(unsigned char *dp, unsigned char *sp, int w, int n)
{
 int w3 = w >> 3;
 int x;

 for (x = 0; x < w3; x++)
 {
  memcpy(dp, get1_tab_255[*sp++], 8);
  dp += 8;
 }
 x = x << 3;
 if (x < w)
  memcpy(dp, get1_tab_255[VGMASK(*sp, w - x)], w - x);
}
