
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwLen; int szString; } ;
typedef char OLECHAR ;
typedef TYPE_1__* LPINTERNAL_BSTR ;
typedef int DWORD_PTR ;
typedef int * BSTR ;


 TYPE_1__* Get (int *) ;
 int * SysAllocString (char const*) ;
 int SysFreeString (int *) ;
 int lstrcmpW (int ,char const*) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_SysAllocString(void)
{
  const OLECHAR szTest[5] = { 'T','e','s','t','\0' };
  BSTR str;

  str = SysAllocString(((void*)0));
  ok (str == ((void*)0), "Expected NULL, got %p\n", str);

  str = SysAllocString(szTest);
  ok (str != ((void*)0), "Expected non-NULL\n");
  if (str)
  {
    LPINTERNAL_BSTR bstr = Get(str);
    DWORD_PTR p = (DWORD_PTR)str;
    int align = sizeof(void *);

    ok (bstr->dwLen == 8, "Expected 8, got %d\n", bstr->dwLen);
    ok (!lstrcmpW(bstr->szString, szTest), "String different\n");
    ok ((p & ~(align-1)) == p, "Not aligned to %d\n", align);
    SysFreeString(str);
  }
}
