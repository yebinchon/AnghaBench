
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int OVERFLOWRANGE (int ,int,int ) ;
 int SHORT ;
 int VarUI4FromI2 ;

__attribute__((used)) static void test_VarUI4FromI2(void)
{
  CONVVARS(SHORT);
  int i;

  OVERFLOWRANGE(VarUI4FromI2, -32768, 0);
  CONVERTRANGE(VarUI4FromI2, 0, 32768);
}
