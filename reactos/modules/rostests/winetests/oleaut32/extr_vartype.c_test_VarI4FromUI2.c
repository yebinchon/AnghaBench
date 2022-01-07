
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int USHORT ;
 int VarI4FromUI2 ;

__attribute__((used)) static void test_VarI4FromUI2(void)
{
  CONVVARS(USHORT);
  int i;

  CONVERTRANGE(VarI4FromUI2, 0, 65536);
}
