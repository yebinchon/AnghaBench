
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;
typedef int * HMODULE ;
typedef int * BOOL ;


 int * FreeLibrary (int *) ;
 int * GetModuleHandleA (char*) ;
 int LDR_ADDREF_DLL_PIN ;
 int * LoadLibraryA (char*) ;
 int STATUS_SUCCESS ;
 int ok (int,char*,int *) ;
 int pLdrAddRefDll (int ,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_LdrAddRefDll(void)
{
    HMODULE mod, mod2;
    NTSTATUS status;
    BOOL ret;

    if (!pLdrAddRefDll)
    {
        win_skip( "LdrAddRefDll not supported\n" );
        return;
    }

    mod = LoadLibraryA("comctl32.dll");
    ok(mod != ((void*)0), "got %p\n", mod);
    ret = FreeLibrary(mod);
    ok(ret, "got %d\n", ret);

    mod2 = GetModuleHandleA("comctl32.dll");
    ok(mod2 == ((void*)0), "got %p\n", mod2);


    mod = LoadLibraryA("comctl32.dll");
    ok(mod != ((void*)0), "got %p\n", mod);
    status = pLdrAddRefDll(0, mod);
    ok(status == STATUS_SUCCESS, "got 0x%08x\n", status);
    ret = FreeLibrary(mod);
    ok(ret, "got %d\n", ret);

    mod2 = GetModuleHandleA("comctl32.dll");
    ok(mod2 != ((void*)0), "got %p\n", mod2);
    ret = FreeLibrary(mod);
    ok(ret, "got %d\n", ret);

    mod2 = GetModuleHandleA("comctl32.dll");
    ok(mod2 == ((void*)0), "got %p\n", mod2);


    mod = LoadLibraryA("comctl32.dll");
    ok(mod != ((void*)0), "got %p\n", mod);
    status = pLdrAddRefDll(LDR_ADDREF_DLL_PIN, mod);
    ok(status == STATUS_SUCCESS, "got 0x%08x\n", status);

    ret = FreeLibrary(mod);
    ok(ret, "got %d\n", ret);
    ret = FreeLibrary(mod);
    ok(ret, "got %d\n", ret);
    ret = FreeLibrary(mod);
    ok(ret, "got %d\n", ret);
    ret = FreeLibrary(mod);
    ok(ret, "got %d\n", ret);

    mod2 = GetModuleHandleA("comctl32.dll");
    ok(mod2 != ((void*)0), "got %p\n", mod2);
}
