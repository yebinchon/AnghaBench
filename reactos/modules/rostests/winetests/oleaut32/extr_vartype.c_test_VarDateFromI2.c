
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERTRANGE (int ,int,int) ;
 int CONVVARS (int ) ;
 int SHORT ;
 int VarDateFromI2 ;

__attribute__((used)) static void test_VarDateFromI2(void)
{
  CONVVARS(SHORT);
  int i;

  CONVERTRANGE(VarDateFromI2, -32768, 32768);
}
