
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u ;
typedef int sqlite3_uint64 ;
typedef int r ;


 int assert (int) ;
 int memcpy (int*,double*,int) ;

__attribute__((used)) static int isInfinity(double r){
  sqlite3_uint64 u;
  assert( sizeof(u)==sizeof(r) );
  memcpy(&u, &r, sizeof(u));
  return ((u>>52)&0x7ff)==0x7ff;
}
