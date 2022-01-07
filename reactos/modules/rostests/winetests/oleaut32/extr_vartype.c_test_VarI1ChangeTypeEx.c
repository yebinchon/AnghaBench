
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANTARG ;
typedef int HRESULT ;


 int COMMON_TYPETEST ;
 int INITIAL_TYPETEST (int ,int ,char*) ;
 int NEGATIVE_TYPETEST (int ,int ,char*,int ,int ) ;
 int VT_I1 ;
 int VT_UI1 ;
 int V_I1 ;
 int V_UI1 ;

__attribute__((used)) static void test_VarI1ChangeTypeEx(void)
{
  HRESULT hres;
  signed char in;
  VARIANTARG vSrc, vDst;

  in = 1;

  INITIAL_TYPETEST(VT_I1, V_I1, "%d");
  COMMON_TYPETEST;
  NEGATIVE_TYPETEST(VT_I1, V_I1, "%d", VT_UI1, V_UI1);
}
