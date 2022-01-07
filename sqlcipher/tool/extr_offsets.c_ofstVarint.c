
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_int64 ;
struct TYPE_3__ {int* aPage; } ;
typedef TYPE_1__ GState ;



__attribute__((used)) static sqlite3_int64 ofstVarint(GState *p, int *pOfst){
  sqlite3_int64 x = 0;
  u8 *a = &p->aPage[*pOfst];
  int n = 0;
  while( n<8 && (a[0] & 0x80)!=0 ){
    x = (x<<7) + (a[0] & 0x7f);
    n++;
    a++;
  }
  if( n==8 ){
    x = (x<<8) + a[0];
  }else{
    x = (x<<7) + a[0];
  }
  *pOfst += (n+1);
  return x;
}
