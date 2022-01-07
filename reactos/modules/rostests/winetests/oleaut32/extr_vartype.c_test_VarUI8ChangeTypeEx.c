
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANTARG ;
typedef int ULONG64 ;
typedef int HRESULT ;


 int COMMON_TYPETEST ;
 int INITIAL_TYPETESTI8 (int ,int ) ;
 int VT_UI8 ;
 int V_UI8 ;
 int has_i8 ;
 int win_skip (char*) ;

__attribute__((used)) static void test_VarUI8ChangeTypeEx(void)
{
  HRESULT hres;
  ULONG64 in;
  VARIANTARG vSrc, vDst;

  if (!has_i8)
  {
    win_skip("I8 and UI8 data types are not available\n");
    return;
  }

  in = 1;

  INITIAL_TYPETESTI8(VT_UI8, V_UI8);
  COMMON_TYPETEST;
}
