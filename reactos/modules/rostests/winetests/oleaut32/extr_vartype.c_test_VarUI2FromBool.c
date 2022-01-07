
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int EXPECT (int) ;
 int VARIANT_BOOL ;
 int VarUI2FromBool ;

__attribute__((used)) static void test_VarUI2FromBool(void)
{
  CONVVARS(VARIANT_BOOL);
  int i;

  CONVERT(VarUI2FromBool, -1); EXPECT(65535);
  CONVERTRANGE(VarUI2FromBool, 0, 32768);
}
