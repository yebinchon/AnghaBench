
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COPYTEST (int,int ,int ,int ,int ,int ,char*) ;
 int VT_UI1 ;
 int V_UI1 (int *) ;
 int V_UI1REF (int *) ;
 int vDst ;
 int vSrc ;

__attribute__((used)) static void test_VarUI1Copy(void)
{
  COPYTEST(1, VT_UI1, V_UI1(&vSrc), V_UI1(&vDst), V_UI1REF(&vSrc), V_UI1REF(&vDst), "%d");
}
