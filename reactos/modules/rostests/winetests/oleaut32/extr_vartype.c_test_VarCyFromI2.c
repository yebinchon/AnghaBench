
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECTCY (int) ;
 int SHORT ;
 int VarCyFromI2 ;

__attribute__((used)) static void test_VarCyFromI2(void)
{
  CONVVARS(SHORT);
  int i;

  for (i = -16384; i < 16384; i++)
  {
    CONVERT(VarCyFromI2,i); EXPECTCY(i);
  }
}
