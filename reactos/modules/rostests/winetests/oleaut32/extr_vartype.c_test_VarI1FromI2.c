
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERTRANGE (int ,int,int) ;
 int CONVVARS (int ) ;
 int OVERFLOWRANGE (int ,int,int) ;
 int SHORT ;
 int VarI1FromI2 ;

__attribute__((used)) static void test_VarI1FromI2(void)
{
  CONVVARS(SHORT);
  int i;

  OVERFLOWRANGE(VarI1FromI2, -32768, -128);
  CONVERTRANGE(VarI1FromI2, -128, 128);
  OVERFLOWRANGE(VarI1FromI2, 129, 32768);
}
