
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int Bitvec ;


 scalar_t__ sqlite3BitvecTestNotNull (int *,int ) ;

int sqlite3BitvecTest(Bitvec *p, u32 i){
  return p!=0 && sqlite3BitvecTestNotNull(p,i);
}
