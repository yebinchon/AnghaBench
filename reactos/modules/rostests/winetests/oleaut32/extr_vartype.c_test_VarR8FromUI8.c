
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERT_I8 (int ,int,int ) ;
 int CONVVARS (int ) ;
 int EXPECT (double) ;
 int ULONG64 ;
 int VarR8FromUI8 ;

__attribute__((used)) static void test_VarR8FromUI8(void)
{
  CONVVARS(ULONG64);

  CONVERT(VarR8FromUI8, 0); EXPECT(0.0);
  CONVERT(VarR8FromUI8, 1); EXPECT(1.0);



}
