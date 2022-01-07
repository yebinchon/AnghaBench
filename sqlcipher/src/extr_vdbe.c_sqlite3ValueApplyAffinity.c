
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int sqlite3_value ;
typedef int Mem ;


 int applyAffinity (int *,int ,int ) ;

void sqlite3ValueApplyAffinity(
  sqlite3_value *pVal,
  u8 affinity,
  u8 enc
){
  applyAffinity((Mem *)pVal, affinity, enc);
}
