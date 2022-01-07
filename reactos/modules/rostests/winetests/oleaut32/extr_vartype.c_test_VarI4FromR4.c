
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,float) ;
 int CONVVARS (int ) ;
 int EXPECT (int) ;
 int FLOAT ;
 int VarI4FromR4 ;

__attribute__((used)) static void test_VarI4FromR4(void)
{
  CONVVARS(FLOAT);


  CONVERT(VarI4FromR4, -1.0f); EXPECT(-1);
  CONVERT(VarI4FromR4, 0.0f); EXPECT(0);
  CONVERT(VarI4FromR4, 1.0f); EXPECT(1);

  CONVERT(VarI4FromR4, -1.5f); EXPECT(-2);
  CONVERT(VarI4FromR4, -0.6f); EXPECT(-1);
  CONVERT(VarI4FromR4, -0.5f); EXPECT(0);
  CONVERT(VarI4FromR4, -0.4f); EXPECT(0);
  CONVERT(VarI4FromR4, 0.4f); EXPECT(0);
  CONVERT(VarI4FromR4, 0.5f); EXPECT(0);
  CONVERT(VarI4FromR4, 0.6f); EXPECT(1);
  CONVERT(VarI4FromR4, 1.5f); EXPECT(2);
}
