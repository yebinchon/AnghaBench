
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void addCharToHash(unsigned int *a, unsigned char x){
  if( a[0]<4 ){
    a[1] = (a[1]<<8) | x;
    a[0]++;
  }else{
    a[2] = (a[2]<<8) | x;
    a[0]++;
    if( a[0]==8 ){
      a[3] += a[1] + a[4];
      a[4] += a[2] + a[3];
      a[0] = a[1] = a[2] = 0;
    }
  }
}
