
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ULONG ;
typedef int BOOL ;


 int GetLastError () ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int MUI_LANGUAGE_ID ;
 int MUI_UI_FALLBACK ;
 int ok (int,char*,...) ;
 int pGetThreadPreferredUILanguages (int,int*,int *,int*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetThreadPreferredUILanguages(void)
{
    BOOL ret;
    ULONG count, size;
    WCHAR *buf;

    if (!pGetThreadPreferredUILanguages)
    {
        win_skip("GetThreadPreferredUILanguages is not available.\n");
        return;
    }

    size = count = 0;
    ret = pGetThreadPreferredUILanguages(MUI_LANGUAGE_ID|MUI_UI_FALLBACK, &count, ((void*)0), &size);
    ok(ret, "got %u\n", GetLastError());
    ok(count, "expected count > 0\n");
    ok(size, "expected size > 0\n");

    count = 0;
    buf = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, size * sizeof(WCHAR));
    ret = pGetThreadPreferredUILanguages(MUI_LANGUAGE_ID|MUI_UI_FALLBACK, &count, buf, &size);
    ok(ret, "got %u\n", GetLastError());
    ok(count, "expected count > 0\n");
    HeapFree(GetProcessHeap(), 0, buf);
}
