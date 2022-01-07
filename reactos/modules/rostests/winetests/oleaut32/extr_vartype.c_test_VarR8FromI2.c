
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERTRANGE (int ,int,int) ;
 int CONVVARS (int ) ;
 int SHORT ;
 int VarR8FromI2 ;

__attribute__((used)) static void test_VarR8FromI2(void)
{
  CONVVARS(SHORT);
  int i;

  CONVERTRANGE(VarR8FromI2, -32768, 32768);
}
