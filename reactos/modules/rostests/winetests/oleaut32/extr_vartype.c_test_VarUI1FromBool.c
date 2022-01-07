
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int EXPECT (int) ;
 int VARIANT_BOOL ;
 int VarUI1FromBool ;

__attribute__((used)) static void test_VarUI1FromBool(void)
{
  CONVVARS(VARIANT_BOOL);
  int i;


  CONVERT(VarUI1FromBool, -1); EXPECT(255);
  CONVERTRANGE(VarUI1FromBool, 0, 256);
  CONVERT(VarUI1FromBool, 256); EXPECT(0);
}
