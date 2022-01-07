
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COPYTEST (double,int ,int ,int ,int ,int ,char*) ;
 int VT_DATE ;
 int V_DATE (int *) ;
 int V_DATEREF (int *) ;
 int vDst ;
 int vSrc ;

__attribute__((used)) static void test_VarDateCopy(void)
{
  COPYTEST(77665544.0, VT_DATE, V_DATE(&vSrc), V_DATE(&vDst), V_DATEREF(&vSrc),
           V_DATEREF(&vDst), "%16.16g");
}
