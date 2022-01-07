
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERTRANGE (int ,int,int) ;
 int CONVVARS (int ) ;
 int SHORT ;
 int VarBoolFromI2 ;

__attribute__((used)) static void test_VarBoolFromI2(void)
{
  CONVVARS(SHORT);
  int i;

  CONVERTRANGE(VarBoolFromI2, -32768, 32768);
}
