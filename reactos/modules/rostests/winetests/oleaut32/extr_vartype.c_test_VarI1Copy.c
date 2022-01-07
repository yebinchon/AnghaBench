
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COPYTEST (int,int ,int ,int ,int ,int ,char*) ;
 int VT_I1 ;
 int V_I1 (int *) ;
 int V_I1REF (int *) ;
 int vDst ;
 int vSrc ;

__attribute__((used)) static void test_VarI1Copy(void)
{
  COPYTEST(1, VT_I1, V_I1(&vSrc), V_I1(&vDst), V_I1REF(&vSrc), V_I1REF(&vDst), "%d");
}
