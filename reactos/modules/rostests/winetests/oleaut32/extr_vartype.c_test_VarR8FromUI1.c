
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BYTE ;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int VarR8FromUI1 ;

__attribute__((used)) static void test_VarR8FromUI1(void)
{
  CONVVARS(BYTE);
  int i;

  CONVERTRANGE(VarR8FromUI1, 0, 256);
}
