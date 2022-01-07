
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COPYTEST (float,int ,int ,int ,int ,int ,char*) ;
 int VT_R4 ;
 int V_R4 (int *) ;
 int V_R4REF (int *) ;
 int vDst ;
 int vSrc ;

__attribute__((used)) static void test_VarR4Copy(void)
{
  COPYTEST(77665544.0f, VT_R4, V_R4(&vSrc), V_R4(&vDst), V_R4REF(&vSrc),V_R4REF(&vDst), "%15.15f");
}
