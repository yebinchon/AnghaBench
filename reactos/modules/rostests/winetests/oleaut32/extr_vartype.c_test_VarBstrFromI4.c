
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int minus_42 ;
typedef int int_min ;
typedef char WCHAR ;
typedef int LONG ;
typedef int LCID ;
typedef scalar_t__ HRESULT ;
typedef int * BSTR ;


 int LANG_ENGLISH ;
 int LOCALE_NOUSEROVERRIDE ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int SORT_DEFAULT ;
 int SUBLANG_ENGLISH_US ;
 scalar_t__ S_OK ;
 int SysFreeString (int *) ;
 scalar_t__ VarBstrFromI4 (int,int ,int ,int **) ;
 scalar_t__ memcmp (int *,char const*,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_VarBstrFromI4(void)
{
  static const WCHAR int_min[] = { '-','2','1','4','7','4','8','3','6','4','8','\0' };
  static const WCHAR minus_42[] = { '-','4','2','\0' };
  BSTR bstr = ((void*)0);
  HRESULT hres;
  LONG value;
  LCID lcid;

  lcid = MAKELCID(MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US), SORT_DEFAULT);




  value = -2147483648;

  hres = VarBstrFromI4(value, lcid, LOCALE_NOUSEROVERRIDE, &bstr);
  ok(hres == S_OK, "got hres 0x%08x\n", hres);
  if (bstr)
  {
    ok(memcmp(bstr, int_min, sizeof(int_min)) == 0, "string different\n");
    SysFreeString(bstr);
  }

  value = -42;
  hres = VarBstrFromI4(value, lcid, LOCALE_NOUSEROVERRIDE, &bstr);
  ok(hres == S_OK, "got hres 0x%08x\n", hres);
  if (bstr)
  {
    ok(memcmp(bstr, minus_42, sizeof(minus_42)) == 0, "string different\n");
    SysFreeString(bstr);
  }
}
