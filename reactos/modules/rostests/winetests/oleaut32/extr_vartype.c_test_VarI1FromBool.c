
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERTRANGE (int ,int,int) ;
 int CONVVARS (int ) ;
 int EXPECT (int) ;
 int VARIANT_BOOL ;
 int VarI1FromBool ;

__attribute__((used)) static void test_VarI1FromBool(void)
{
  CONVVARS(VARIANT_BOOL);
  int i;


  CONVERT(VarI1FromBool, -129); EXPECT(127);
  CONVERTRANGE(VarI1FromBool, -128, 128);
  CONVERT(VarI1FromBool, 128); EXPECT(-128);
}
