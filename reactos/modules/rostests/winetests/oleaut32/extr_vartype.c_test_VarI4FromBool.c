
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERTRANGE (int ,int,int) ;
 int CONVVARS (int ) ;
 int VARIANT_BOOL ;
 int VarI4FromBool ;

__attribute__((used)) static void test_VarI4FromBool(void)
{
  CONVVARS(VARIANT_BOOL);
  int i;

  CONVERTRANGE(VarI4FromBool, -32768, 32768);
}
