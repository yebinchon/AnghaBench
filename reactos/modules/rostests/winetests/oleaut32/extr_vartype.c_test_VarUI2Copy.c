
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COPYTEST (int,int ,int ,int ,int ,int ,char*) ;
 int VT_UI2 ;
 int V_UI2 (int *) ;
 int V_UI2REF (int *) ;
 int vDst ;
 int vSrc ;

__attribute__((used)) static void test_VarUI2Copy(void)
{
  COPYTEST(1, VT_UI2, V_UI2(&vSrc), V_UI2(&vDst), V_UI2REF(&vSrc), V_UI2REF(&vDst), "%d");
}
