
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HBITMAP ;


 int DoBlt (int ) ;
 int W_HEIGHT ;
 int W_WIDTH ;
 unsigned int* dibits ;

void UpdatePalette(HBITMAP hBM){
 int i,y;
 static unsigned int c=0;

 for(i=0;i<W_WIDTH;i++){
  for(y=0;y<=W_HEIGHT-1;y++)
   dibits[y*320+i] = c % 256;

  if (c > 512)
   c = 0;
  else
   c++;
 }

 DoBlt(hBM);
}
