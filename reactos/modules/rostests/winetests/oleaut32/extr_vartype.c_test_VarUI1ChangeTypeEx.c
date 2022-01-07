
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANTARG ;
typedef int HRESULT ;
typedef int BYTE ;


 int COMMON_TYPETEST ;
 int INITIAL_TYPETEST (int ,int ,char*) ;
 int NEGATIVE_TYPETEST (int ,int ,char*,int ,int ) ;
 int VT_I1 ;
 int VT_UI1 ;
 int V_I1 ;
 int V_UI1 ;

__attribute__((used)) static void test_VarUI1ChangeTypeEx(void)
{
  HRESULT hres;
  BYTE in;
  VARIANTARG vSrc, vDst;

  in = 1;

  INITIAL_TYPETEST(VT_UI1, V_UI1, "%d");
  COMMON_TYPETEST;
  NEGATIVE_TYPETEST(VT_UI1, V_UI1, "%d", VT_I1, V_I1);
}
