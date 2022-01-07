
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int OVERFLOWRANGE (int ,int,int) ;
 int SHORT ;
 int VarUI1FromI2 ;

__attribute__((used)) static void test_VarUI1FromI2(void)
{
  CONVVARS(SHORT);
  int i;

  OVERFLOWRANGE(VarUI1FromI2, -32768, 0);
  CONVERTRANGE(VarUI1FromI2, 0, 256);
  OVERFLOWRANGE(VarUI1FromI2, 256, 32768);
}
