
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int EXPECT (float) ;
 int FLOAT ;
 int VarR4FromR8 ;

__attribute__((used)) static void test_VarR4FromR8(void)
{
  CONVVARS(FLOAT);

  CONVERT(VarR4FromR8, -1.0); EXPECT(-1.0f);
  CONVERT(VarR4FromR8, 0.0); EXPECT(0.0f);
  CONVERT(VarR4FromR8, 1.0); EXPECT(1.0f);
  CONVERT(VarR4FromR8, 1.5); EXPECT(1.5f);


}
