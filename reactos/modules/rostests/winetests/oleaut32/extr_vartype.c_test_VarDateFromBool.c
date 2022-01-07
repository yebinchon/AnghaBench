
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int EXPECT (double) ;
 int VARIANT_BOOL ;
 double VARIANT_FALSE ;
 double VARIANT_TRUE ;
 int VarDateFromBool ;

__attribute__((used)) static void test_VarDateFromBool(void)
{
  CONVVARS(VARIANT_BOOL);

  CONVERT(VarDateFromBool, VARIANT_TRUE); EXPECT(VARIANT_TRUE * 1.0);
  CONVERT(VarDateFromBool, VARIANT_FALSE); EXPECT(VARIANT_FALSE * 1.0);
}
