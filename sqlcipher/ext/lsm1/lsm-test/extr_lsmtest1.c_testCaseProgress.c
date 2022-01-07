
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int printf (char*) ;
 int stdout ;

void testCaseProgress(int i, int n, int nDot, int *piDot){
  int iDot = *piDot;
  while( iDot < ( ((nDot*2+1) * i) / (n*2) ) ){
    printf(".");
    fflush(stdout);
    iDot++;
  }
  *piDot = iDot;
}
