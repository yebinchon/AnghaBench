
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwLen; int * szString; } ;
typedef char OLECHAR ;
typedef TYPE_1__* LPINTERNAL_BSTR ;
typedef int * BSTR ;


 TYPE_1__* Get (int *) ;
 int * SysAllocStringLen (char const*,int) ;
 int SysFreeString (int *) ;
 int lstrcmpW (int *,char const*) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_SysAllocStringLen(void)
{
  const OLECHAR szTest[5] = { 'T','e','s','t','\0' };
  BSTR str;


  if (0)
  {
  str = SysAllocStringLen(szTest, 0x80000000);
  ok (str == ((void*)0), "Expected NULL, got %p\n", str);
  }

  str = SysAllocStringLen(((void*)0), 0);
  ok (str != ((void*)0), "Expected non-NULL\n");
  if (str)
  {
    LPINTERNAL_BSTR bstr = Get(str);

    ok (bstr->dwLen == 0, "Expected 0, got %d\n", bstr->dwLen);
    ok (!bstr->szString[0], "String not empty\n");
    SysFreeString(str);
  }

  str = SysAllocStringLen(szTest, 4);
  ok (str != ((void*)0), "Expected non-NULL\n");
  if (str)
  {
    LPINTERNAL_BSTR bstr = Get(str);

    ok (bstr->dwLen == 8, "Expected 8, got %d\n", bstr->dwLen);
    ok (!lstrcmpW(bstr->szString, szTest), "String different\n");
    SysFreeString(str);
  }
}
