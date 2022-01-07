
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COPYTEST (int,int ,int ,int ,int ,int ,char*) ;
 int VT_I4 ;
 int V_I4 (int *) ;
 int V_I4REF (int *) ;
 int vDst ;
 int vSrc ;

__attribute__((used)) static void test_VarI4Copy(void)
{
  COPYTEST(1, VT_I4, V_I4(&vSrc), V_I4(&vDst), V_I4REF(&vSrc), V_I4REF(&vDst), "%d");
}
