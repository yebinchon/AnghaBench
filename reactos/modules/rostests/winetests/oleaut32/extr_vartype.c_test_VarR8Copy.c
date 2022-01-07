
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COPYTEST (double,int ,int ,int ,int ,int ,char*) ;
 int VT_R8 ;
 int V_R8 (int *) ;
 int V_R8REF (int *) ;
 int vDst ;
 int vSrc ;

__attribute__((used)) static void test_VarR8Copy(void)
{
  COPYTEST(77665544.0, VT_R8, V_R8(&vSrc), V_R8(&vDst), V_R8REF(&vSrc),V_R8REF(&vDst), "%16.16g");
}
