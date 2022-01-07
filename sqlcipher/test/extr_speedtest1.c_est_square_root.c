
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int est_square_root(int x){
  int y0 = x/2;
  int y1;
  int n;
  for(n=0; y0>0 && n<10; n++){
    y1 = (y0 + x/y0)/2;
    if( y1==y0 ) break;
    y0 = y1;
  }
  return y0;
}
