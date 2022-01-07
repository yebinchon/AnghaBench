
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int assert (int) ;
 int sprintf (char*,char*,int) ;

void dt3PutKey(u8 *aBuf, int iKey){
  assert( iKey<100000 && iKey>=0 );
  sprintf((char *)aBuf, "%.5d", iKey);
}
