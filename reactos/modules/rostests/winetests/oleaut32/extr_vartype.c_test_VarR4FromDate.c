
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int DATE ;
 int EXPECT (float) ;
 int VarR4FromDate ;

__attribute__((used)) static void test_VarR4FromDate(void)
{
  CONVVARS(DATE);

  CONVERT(VarR4FromDate, -1.0); EXPECT(-1.0f);
  CONVERT(VarR4FromDate, 0.0); EXPECT(0.0f);
  CONVERT(VarR4FromDate, 1.0); EXPECT(1.0f);
}
