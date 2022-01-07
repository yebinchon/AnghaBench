
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int DATE ;
 int EXPECT (double) ;
 int VarR8FromDate ;

__attribute__((used)) static void test_VarR8FromDate(void)
{
  CONVVARS(DATE);

  CONVERT(VarR8FromDate, -1.0); EXPECT(-1.0);
  CONVERT(VarR8FromDate, -0.0); EXPECT(0.0);
  CONVERT(VarR8FromDate, 1.0); EXPECT(1.0);
}
