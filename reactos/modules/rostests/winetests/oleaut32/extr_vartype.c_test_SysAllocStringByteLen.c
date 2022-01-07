
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int dwLen; int * szString; } ;
typedef char OLECHAR ;
typedef TYPE_1__* LPINTERNAL_BSTR ;
typedef char* LPCSTR ;
typedef char CHAR ;
typedef int * BSTR ;


 TYPE_1__* Get (int *) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int * SysAllocStringByteLen (char const*,int) ;
 int SysFreeString (int *) ;
 int lstrcmpA (char*,char const*) ;
 int lstrcmpW (int *,char const*) ;
 int memset (char*,int,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_SysAllocStringByteLen(void)
{
  const OLECHAR szTest[10] = { 'T','e','s','t','\0' };
  const CHAR szTestA[6] = { 'T','e','s','t','\0','?' };
  char *buf;
  BSTR str;
  int i;

  if (sizeof(void *) == 4)
  {
      str = SysAllocStringByteLen(szTestA, 0x80000000);
      ok (str == ((void*)0), "Expected NULL, got %p\n", str);
  }

  str = SysAllocStringByteLen(szTestA, 0xffffffff);
  ok (str == ((void*)0), "Expected NULL, got %p\n", str);

  str = SysAllocStringByteLen(((void*)0), 0);
  ok (str != ((void*)0), "Expected non-NULL\n");
  if (str)
  {
    LPINTERNAL_BSTR bstr = Get(str);

    ok (bstr->dwLen == 0, "Expected 0, got %d\n", bstr->dwLen);
    ok (!bstr->szString[0], "String not empty\n");
    SysFreeString(str);
  }

  str = SysAllocStringByteLen(szTestA, 4);
  ok (str != ((void*)0), "Expected non-NULL\n");
  if (str)
  {
    LPINTERNAL_BSTR bstr = Get(str);

    ok (bstr->dwLen == 4, "Expected 4, got %d\n", bstr->dwLen);
    ok (!lstrcmpA((LPCSTR)bstr->szString, szTestA), "String different\n");
    SysFreeString(str);
  }


  str = SysAllocStringByteLen(szTestA, 3);
  ok (str != ((void*)0), "Expected non-NULL\n");
  if (str)
  {
    const CHAR szTestTruncA[4] = { 'T','e','s','\0' };
    LPINTERNAL_BSTR bstr = Get(str);

    ok (bstr->dwLen == 3, "Expected 3, got %d\n", bstr->dwLen);
    ok (!lstrcmpA((LPCSTR)bstr->szString, szTestTruncA), "String different\n");
    ok (!bstr->szString[2], "String not terminated\n");
    SysFreeString(str);
  }

  str = SysAllocStringByteLen((LPCSTR)szTest, 8);
  ok (str != ((void*)0), "Expected non-NULL\n");
  if (str)
  {
    LPINTERNAL_BSTR bstr = Get(str);

    ok (bstr->dwLen == 8, "Expected 8, got %d\n", bstr->dwLen);
    ok (!lstrcmpW(bstr->szString, szTest), "String different\n");
    SysFreeString(str);
  }


  buf = HeapAlloc(GetProcessHeap(), 0, 1025);
  ok (buf != ((void*)0), "Expected non-NULL\n");
  for (i = 0; i < 1024; i++)
  {
    LPINTERNAL_BSTR bstr;

    str = SysAllocStringByteLen(((void*)0), i);
    ok (str != ((void*)0), "Expected non-NULL\n");
    bstr = Get(str);
    ok (bstr->dwLen == i, "Expected %d, got %d\n", i, bstr->dwLen);
    ok (!bstr->szString[(i+sizeof(WCHAR)-1)/sizeof(WCHAR)], "String not terminated\n");
    SysFreeString(str);

    memset(buf, 0xaa, 1025);
    str = SysAllocStringByteLen(buf, i);
    ok (str != ((void*)0), "Expected non-NULL\n");
    bstr = Get(str);
    ok (bstr->dwLen == i, "Expected %d, got %d\n", i, bstr->dwLen);
    buf[i] = 0;
    ok (!lstrcmpA((LPCSTR)bstr->szString, buf), "String different\n");
    ok (!bstr->szString[(i+sizeof(WCHAR)-1)/sizeof(WCHAR)], "String not terminated\n");
    SysFreeString(str);
  }
  HeapFree(GetProcessHeap(), 0, buf);
}
