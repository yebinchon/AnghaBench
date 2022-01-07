
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int str ;
typedef int DWORD ;


 int LC_ALL ;
 int MEM_COMMIT ;
 int MEM_RELEASE ;
 int PAGE_READONLY ;
 int PAGE_READWRITE ;
 char* VirtualAlloc (int *,int,int ,int ) ;
 int VirtualFree (char*,int,int ) ;
 int VirtualProtect (char*,int,int ,int *) ;
 char* _strupr (char*) ;
 int memcpy (char*,char const*,int) ;
 int ok (int,char*,...) ;
 int setlocale (int ,char*) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__strupr(void)
{
    const char str[] = "123";
    char str2[4];
    char *mem, *p;
    DWORD prot;

    mem = VirtualAlloc(((void*)0), sizeof(str), MEM_COMMIT, PAGE_READWRITE);
    ok(mem != ((void*)0), "VirtualAlloc failed\n");
    memcpy(mem, str, sizeof(str));
    ok(VirtualProtect(mem, sizeof(str), PAGE_READONLY, &prot), "VirtualProtect failed\n");

    strcpy(str2, "aBc");
    p = _strupr(str2);
    ok(p == str2, "_strupr returned %p\n", p);
    ok(!strcmp(str2, "ABC"), "str2 = %s\n", str2);

    p = _strupr(mem);
    ok(p == mem, "_strupr returned %p\n", p);
    ok(!strcmp(mem, "123"), "mem = %s\n", mem);

    if(!setlocale(LC_ALL, "english")) {
        VirtualFree(mem, sizeof(str), MEM_RELEASE);
        win_skip("English locale _strupr tests\n");
        return;
    }

    strcpy(str2, "aBc");
    p = _strupr(str2);
    ok(p == str2, "_strupr returned %p\n", p);
    ok(!strcmp(str2, "ABC"), "str2 = %s\n", str2);

    if (0)
    {
        p = _strupr(mem);
        ok(p == mem, "_strupr returned %p\n", p);
        ok(!strcmp(mem, "123"), "mem = %s\n", mem);
    }

    setlocale(LC_ALL, "C");
    VirtualFree(mem, sizeof(str), MEM_RELEASE);
}
