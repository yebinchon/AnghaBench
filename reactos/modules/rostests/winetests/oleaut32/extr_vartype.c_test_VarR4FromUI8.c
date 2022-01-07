
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECT (float) ;
 int ULONG64 ;
 int VarR4FromUI8 ;

__attribute__((used)) static void test_VarR4FromUI8(void)
{
  CONVVARS(ULONG64);

  CONVERT(VarR4FromUI8, 0); EXPECT(0.0f);
  CONVERT(VarR4FromUI8, 1); EXPECT(1.0f);
}
