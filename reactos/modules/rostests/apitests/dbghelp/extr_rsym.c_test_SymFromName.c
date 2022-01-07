
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Name; int Tag; int Address; int Flags; int ModBase; } ;
typedef int TCHAR ;
typedef int SYMBOL_INFO ;
typedef TYPE_1__* PSYMBOL_INFO ;
typedef int HANDLE ;
typedef scalar_t__ DWORD64 ;
typedef int BOOL ;


 int INIT_PSYM (char*) ;
 int MAX_SYM_NAME ;
 int SYMFLAG_FUNCTION ;
 int SymFromName (int ,char*,TYPE_1__*) ;
 int SymTagFunction ;
 int TRUE ;
 int ok_hex (int ,int ) ;
 int ok_int (int ,int ) ;
 int ok_str (int ,char*) ;
 int ok_ulonglong (int ,scalar_t__) ;
 int skip (char*) ;
 int supports_rsym (int ,scalar_t__) ;

__attribute__((used)) static void test_SymFromName(HANDLE hProc, DWORD64 BaseAddress)
{
    BOOL Ret;
    char buffer[sizeof(SYMBOL_INFO) + MAX_SYM_NAME * sizeof(TCHAR)];
    PSYMBOL_INFO pSymbol = (PSYMBOL_INFO)buffer;

    if (!supports_rsym(hProc, BaseAddress))
    {
        skip("dbghelp.dll cannot parse rsym\n");
    }
    else
    {
        INIT_PSYM(buffer);
        Ret = SymFromName(hProc, "DllMain", pSymbol);
        ok_int(Ret, TRUE);
        ok_ulonglong(pSymbol->ModBase, BaseAddress);
        ok_hex(pSymbol->Flags, SYMFLAG_FUNCTION);
        ok_ulonglong(pSymbol->Address, BaseAddress + 0x1000);
        ok_hex(pSymbol->Tag, SymTagFunction);
        ok_str(pSymbol->Name, "DllMain");

        INIT_PSYM(buffer);
        Ret = SymFromName(hProc, "FfsChkdsk", pSymbol);
        ok_int(Ret, TRUE);
        ok_ulonglong(pSymbol->ModBase, BaseAddress);
        ok_hex(pSymbol->Flags, SYMFLAG_FUNCTION);
        ok_ulonglong(pSymbol->Address, BaseAddress + 0x103F);
        ok_hex(pSymbol->Tag, SymTagFunction);
        ok_str(pSymbol->Name, "FfsChkdsk");

        INIT_PSYM(buffer);
        Ret = SymFromName(hProc, "FfsFormat", pSymbol);
        ok_int(Ret, TRUE);
        ok_ulonglong(pSymbol->ModBase, BaseAddress);
        ok_hex(pSymbol->Flags, SYMFLAG_FUNCTION);
        ok_ulonglong(pSymbol->Address, BaseAddress + 0x100C);
        ok_hex(pSymbol->Tag, SymTagFunction);
        ok_str(pSymbol->Name, "FfsFormat");
    }
}
