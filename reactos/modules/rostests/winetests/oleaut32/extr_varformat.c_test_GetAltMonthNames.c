
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPOLESTR ;
typedef int * HRESULT ;


 int * GetAltMonthNames (int ,int **) ;
 int LANG_ARABIC ;
 int LANG_ENGLISH ;
 int LANG_POLISH ;
 int LANG_RUSSIAN ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int SORT_DEFAULT ;
 int SUBLANG_ARABIC_EGYPT ;
 int SUBLANG_DEFAULT ;
 int SUBLANG_ENGLISH_US ;
 int * S_OK ;
 int ok (int,char*,int *) ;

__attribute__((used)) static void test_GetAltMonthNames(void)
{
    LPOLESTR *str, *str2;
    HRESULT hr;

    str = (void *)0xdeadbeef;
    hr = GetAltMonthNames(0, &str);
    ok(hr == S_OK, "Unexpected return value %08x\n", hr);
    ok(str == ((void*)0), "Got %p\n", str);

    str = (void *)0xdeadbeef;
    hr = GetAltMonthNames(MAKELCID(MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US), SORT_DEFAULT), &str);
    ok(hr == S_OK, "Unexpected return value %08x\n", hr);
    ok(str == ((void*)0), "Got %p\n", str);

    str = ((void*)0);
    hr = GetAltMonthNames(MAKELCID(MAKELANGID(LANG_ARABIC, SUBLANG_ARABIC_EGYPT), SORT_DEFAULT), &str);
    ok(hr == S_OK, "Unexpected return value %08x\n", hr);
    ok(str != ((void*)0), "Got %p\n", str);

    str2 = ((void*)0);
    hr = GetAltMonthNames(MAKELCID(MAKELANGID(LANG_ARABIC, SUBLANG_ARABIC_EGYPT), SORT_DEFAULT), &str2);
    ok(hr == S_OK, "Unexpected return value %08x\n", hr);
    ok(str2 == str, "Got %p\n", str2);

    str = ((void*)0);
    hr = GetAltMonthNames(MAKELCID(MAKELANGID(LANG_RUSSIAN, SUBLANG_DEFAULT), SORT_DEFAULT), &str);
    ok(hr == S_OK, "Unexpected return value %08x\n", hr);
    ok(str != ((void*)0), "Got %p\n", str);

    str = ((void*)0);
    hr = GetAltMonthNames(MAKELCID(MAKELANGID(LANG_POLISH, SUBLANG_DEFAULT), SORT_DEFAULT), &str);
    ok(hr == S_OK, "Unexpected return value %08x\n", hr);
    ok(str != ((void*)0), "Got %p\n", str);
}
