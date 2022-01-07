
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECT (int ) ;
 int ULONG64 ;
 int VARIANT_FALSE ;
 int VARIANT_TRUE ;
 int VarBoolFromUI8 ;

__attribute__((used)) static void test_VarBoolFromUI8(void)
{
  CONVVARS(ULONG64);

  CONVERT(VarBoolFromUI8, 0); EXPECT(VARIANT_FALSE);
  CONVERT(VarBoolFromUI8, 1); EXPECT(VARIANT_TRUE);
}
