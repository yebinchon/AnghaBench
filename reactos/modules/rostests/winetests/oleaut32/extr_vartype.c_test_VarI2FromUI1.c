
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BYTE ;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int VarI2FromUI1 ;

__attribute__((used)) static void test_VarI2FromUI1(void)
{
  CONVVARS(BYTE);
  int i;

  CONVERTRANGE(VarI2FromUI1, 0, 256);
}
