
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zNum ;
struct TYPE_2__ {unsigned int szTest; } ;


 TYPE_1__ g ;
 int printf (char*,unsigned int,unsigned int,unsigned int,char*) ;
 int speedtest1_numbername (unsigned int,char*,int) ;
 unsigned int swizzle (unsigned int,unsigned int) ;

void testset_debug1(void){
  unsigned i, n;
  unsigned x1, x2;
  char zNum[2000];

  n = g.szTest;
  for(i=1; i<=n; i++){
    x1 = swizzle(i, n);
    x2 = swizzle(x1, n);
    speedtest1_numbername(x1, zNum, sizeof(zNum));
    printf("%5d %5d %5d %s\n", i, x1, x2, zNum);
  }
}
