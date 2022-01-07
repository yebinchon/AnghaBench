
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get1 (unsigned char*,int) ;
 int** get1_tab_1 ;
 int** get1_tab_1p ;
 int** get1_tab_255 ;
 int** get1_tab_255p ;

__attribute__((used)) static void
init_get1_tables(void)
{
 static int once = 0;
 unsigned char bits[1];
 int i, k, x;



 if (once)
  return;

 for (i = 0; i < 256; i++)
 {
  bits[0] = i;
  for (k = 0; k < 8; k++)
  {
   x = get1(bits, k);

   get1_tab_1[i][k] = x;
   get1_tab_1p[i][k * 2] = x;
   get1_tab_1p[i][k * 2 + 1] = 255;

   get1_tab_255[i][k] = x * 255;
   get1_tab_255p[i][k * 2] = x * 255;
   get1_tab_255p[i][k * 2 + 1] = 255;
  }
 }

 once = 1;
}
