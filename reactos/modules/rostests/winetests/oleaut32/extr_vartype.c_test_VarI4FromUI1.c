
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BYTE ;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int VarI4FromUI1 ;

__attribute__((used)) static void test_VarI4FromUI1(void)
{
  CONVVARS(BYTE);
  int i;

  CONVERTRANGE(VarI4FromUI1, 0, 256);
}
