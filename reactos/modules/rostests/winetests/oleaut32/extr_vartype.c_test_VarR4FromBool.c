
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,float) ;
 int CONVVARS (int ) ;
 int EXPECT (float) ;
 int VARIANT_BOOL ;
 float VARIANT_FALSE ;
 float VARIANT_TRUE ;
 int VarR4FromBool ;

__attribute__((used)) static void test_VarR4FromBool(void)
{
  CONVVARS(VARIANT_BOOL);

  CONVERT(VarR4FromBool, VARIANT_TRUE); EXPECT(VARIANT_TRUE * 1.0f);
  CONVERT(VarR4FromBool, VARIANT_FALSE); EXPECT(VARIANT_FALSE * 1.0f);
}
