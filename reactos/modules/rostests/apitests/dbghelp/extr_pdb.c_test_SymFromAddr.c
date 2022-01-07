
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ModBase; int Address; int Name; int Tag; int Flags; } ;
typedef int TCHAR ;
typedef int SYMBOL_INFO ;
typedef TYPE_1__* PSYMBOL_INFO ;
typedef int HANDLE ;
typedef int DWORD64 ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_MOD_NOT_FOUND ;
 int FALSE ;
 int GetLastError () ;
 int INIT_PSYM (char*) ;
 int MAX_SYM_NAME ;
 int SymFromAddr (int ,int,int*,TYPE_1__*) ;
 int SymTagFunction ;
 int SymTagPublicSymbol ;
 int TRUE ;
 int ok_hex (int ,int ) ;
 int ok_int (int ,int ) ;
 int ok_str (int ,char*) ;
 int ok_ulonglong (int,int) ;
 int skip (char*) ;
 int supports_pdb (int ,int) ;

__attribute__((used)) static void test_SymFromAddr(HANDLE hProc, DWORD64 BaseAddress)
{
    BOOL Ret;
    char buffer[sizeof(SYMBOL_INFO) + MAX_SYM_NAME * sizeof(TCHAR)];
    PSYMBOL_INFO pSymbol = (PSYMBOL_INFO)buffer;

    DWORD64 Displacement;
    DWORD dwErr;


    Displacement = 0;
    INIT_PSYM(buffer);
    Ret = SymFromAddr(hProc, BaseAddress -1, &Displacement, pSymbol);
    dwErr = GetLastError();
    ok_int(Ret, FALSE);
    ok_hex(dwErr, ERROR_MOD_NOT_FOUND);


    Displacement = 0;
    INIT_PSYM(buffer);
    Ret = SymFromAddr(hProc, BaseAddress, &Displacement, pSymbol);
    ok_int(Ret, TRUE);
    ok_ulonglong(Displacement, 0xffffffffffffffff);
    ok_ulonglong(pSymbol->ModBase, BaseAddress);
    ok_hex(pSymbol->Flags, 0);
    ok_ulonglong(pSymbol->Address, BaseAddress + 0x1010);
    ok_hex(pSymbol->Tag, SymTagFunction);
    ok_str(pSymbol->Name, "DllMain");


    Displacement = 0;
    INIT_PSYM(buffer);
    Ret = SymFromAddr(hProc, BaseAddress + 0x1010, &Displacement, pSymbol);
    ok_int(Ret, TRUE);
    ok_ulonglong(Displacement, 0);
    ok_ulonglong(pSymbol->ModBase, BaseAddress);
    ok_hex(pSymbol->Flags, 0);
    ok_ulonglong(pSymbol->Address, BaseAddress + 0x1010);
    ok_hex(pSymbol->Tag, SymTagFunction);
    ok_str(pSymbol->Name, "DllMain");


    Displacement = 0;
    INIT_PSYM(buffer);
    Ret = SymFromAddr(hProc, BaseAddress + 0x102D, &Displacement, pSymbol);
    ok_int(Ret, TRUE);
    ok_ulonglong(Displacement, 0x1d);
    ok_ulonglong(pSymbol->ModBase, BaseAddress);
    ok_hex(pSymbol->Flags, 0);
    ok_ulonglong(pSymbol->Address, BaseAddress + 0x1010);
    ok_hex(pSymbol->Tag, SymTagFunction);
    ok_str(pSymbol->Name, "DllMain");


    Displacement = 0;
    INIT_PSYM(buffer);
    Ret = SymFromAddr(hProc, BaseAddress + 0x102E, &Displacement, pSymbol);
    ok_int(Ret, TRUE);
    ok_ulonglong(Displacement, 0x1e);
    ok_ulonglong(pSymbol->ModBase, BaseAddress);
    ok_hex(pSymbol->Flags, 0);
    ok_ulonglong(pSymbol->Address, BaseAddress + 0x1010);
    ok_hex(pSymbol->Tag, SymTagFunction);
    ok_str(pSymbol->Name, "DllMain");


    Displacement = 0;
    INIT_PSYM(buffer);
    Ret = SymFromAddr(hProc, BaseAddress + 0x103f, &Displacement, pSymbol);
    ok_int(Ret, TRUE);
    ok_ulonglong(Displacement, 0x2f);
    ok_ulonglong(pSymbol->ModBase, BaseAddress);
    ok_hex(pSymbol->Flags, 0);
    ok_ulonglong(pSymbol->Address, BaseAddress + 0x1010);
    ok_hex(pSymbol->Tag, SymTagFunction);
    ok_str(pSymbol->Name, "DllMain");


    Displacement = 0;
    INIT_PSYM(buffer);
    Ret = SymFromAddr(hProc, BaseAddress + 0x1040, &Displacement, pSymbol);
    ok_int(Ret, TRUE);
    ok_ulonglong(Displacement, 0);
    ok_ulonglong(pSymbol->ModBase, BaseAddress);
    ok_hex(pSymbol->Flags, 0);
    ok_ulonglong(pSymbol->Address, BaseAddress + 0x1040);
    ok_hex(pSymbol->Tag, SymTagFunction);
    ok_str(pSymbol->Name, "FfsChkdsk");

    if (!supports_pdb(hProc, BaseAddress))
    {
        skip("dbghelp.dll too old or cannot read this symbol!\n");
    }
    else
    {

        Displacement = 0;
        INIT_PSYM(buffer);
        Ret = SymFromAddr(hProc, BaseAddress + 0x2000, &Displacement, pSymbol);
        ok_int(Ret, TRUE);
        ok_ulonglong(Displacement, 0);
        ok_ulonglong(pSymbol->ModBase, BaseAddress);
        ok_hex(pSymbol->Flags, 0);
        ok_ulonglong(pSymbol->Address, BaseAddress + 0x2000);
        ok_hex(pSymbol->Tag, SymTagPublicSymbol);
        ok_str(pSymbol->Name, "__imp__DbgPrint");
    }
}
