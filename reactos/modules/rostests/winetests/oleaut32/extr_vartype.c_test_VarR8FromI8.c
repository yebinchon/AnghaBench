
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERT_I8 (int ,int,int) ;
 int CONVVARS (int ) ;
 int EXPECT (double) ;
 int LONG64 ;
 int VarR8FromI8 ;

__attribute__((used)) static void test_VarR8FromI8(void)
{
  CONVVARS(LONG64);

  CONVERT(VarR8FromI8, -1); EXPECT(-1.0);
  CONVERT(VarR8FromI8, 0); EXPECT(0.0);
  CONVERT(VarR8FromI8, 1); EXPECT(1.0);



}
