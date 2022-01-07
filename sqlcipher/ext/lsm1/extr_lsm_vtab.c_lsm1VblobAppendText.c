
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int lsm1_vblob ;


 int lsm1VblobAppend (int *,int *,int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void lsm1VblobAppendText(lsm1_vblob *p, const char *z){
  lsm1VblobAppend(p, (u8*)z, (u32)strlen(z));
}
