
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANTARG ;
typedef int ULONG ;
typedef int HRESULT ;


 int COMMON_TYPETEST ;
 int INITIAL_TYPETEST (int ,int ,char*) ;
 int NEGATIVE_TYPETEST (int ,int ,char*,int ,int ) ;
 int VT_I4 ;
 int VT_UI4 ;
 int V_I4 ;
 int V_UI4 ;

__attribute__((used)) static void test_VarUI4ChangeTypeEx(void)
{
  HRESULT hres;
  ULONG in;
  VARIANTARG vSrc, vDst;

  in = 1;

  INITIAL_TYPETEST(VT_UI4, V_UI4, "%u");
  COMMON_TYPETEST;
  NEGATIVE_TYPETEST(VT_UI4, V_UI4, "%u", VT_I4, V_I4);
}
