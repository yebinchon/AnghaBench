
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANTARG ;
typedef int USHORT ;
typedef int HRESULT ;


 int COMMON_TYPETEST ;
 int INITIAL_TYPETEST (int ,int ,char*) ;
 int NEGATIVE_TYPETEST (int ,int ,char*,int ,int ) ;
 int VT_I2 ;
 int VT_UI2 ;
 int V_I2 ;
 int V_UI2 ;

__attribute__((used)) static void test_VarUI2ChangeTypeEx(void)
{
  HRESULT hres;
  USHORT in;
  VARIANTARG vSrc, vDst;

  in = 1;

  INITIAL_TYPETEST(VT_UI2, V_UI2, "%d");
  COMMON_TYPETEST;
  NEGATIVE_TYPETEST(VT_UI2, V_UI2, "%d", VT_I2, V_I2);
}
