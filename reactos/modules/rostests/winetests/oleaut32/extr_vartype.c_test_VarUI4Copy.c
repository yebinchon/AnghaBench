
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COPYTEST (unsigned int,int ,int ,int ,int ,int ,char*) ;
 int VT_UI4 ;
 int V_UI4 (int *) ;
 int V_UI4REF (int *) ;
 int vDst ;
 int vSrc ;

__attribute__((used)) static void test_VarUI4Copy(void)
{
  COPYTEST(1u, VT_UI4, V_UI4(&vSrc), V_UI4(&vDst), V_UI4REF(&vSrc), V_UI4REF(&vDst), "%u");
}
