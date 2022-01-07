
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COPYTEST (int,int ,int ,int ,int ,int ,char*) ;
 int VT_I2 ;
 int V_I2 (int *) ;
 int V_I2REF (int *) ;
 int vDst ;
 int vSrc ;

__attribute__((used)) static void test_VarI2Copy(void)
{
  COPYTEST(1, VT_I2, V_I2(&vSrc), V_I2(&vDst), V_I2REF(&vSrc), V_I2REF(&vDst), "%d");
}
