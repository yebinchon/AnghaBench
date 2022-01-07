
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int LsmString ;


 int lsmFlagsToString (int ,char*) ;
 int lsmStringAppend (int *,char*,int) ;

__attribute__((used)) static void strAppendFlags(LsmString *pStr, u8 flags){
  char zFlags[8];

  lsmFlagsToString(flags, zFlags);
  zFlags[4] = ':';

  lsmStringAppend(pStr, zFlags, 5);
}
