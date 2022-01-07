
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECT (float) ;
 int LONG64 ;
 int VarR4FromI8 ;

__attribute__((used)) static void test_VarR4FromI8(void)
{
  CONVVARS(LONG64);

  CONVERT(VarR4FromI8, -1); EXPECT(-1.0f);
  CONVERT(VarR4FromI8, 0); EXPECT(0.0f);
  CONVERT(VarR4FromI8, 1); EXPECT(1.0f);
}
