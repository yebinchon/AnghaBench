
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COPYTEST (int,int ,int ,int ,int ,int ,char*) ;
 int VT_BOOL ;
 int V_BOOL (int *) ;
 int V_BOOLREF (int *) ;
 int vDst ;
 int vSrc ;

__attribute__((used)) static void test_VarBoolCopy(void)
{
  COPYTEST(1, VT_BOOL, V_BOOL(&vSrc), V_BOOL(&vDst), V_BOOLREF(&vSrc), V_BOOLREF(&vDst), "%d");
}
