
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



int lsmVarintSize(u8 c){
  if( c<241 ) return 1;
  if( c<249 ) return 2;
  return (int)(c - 246);
}
