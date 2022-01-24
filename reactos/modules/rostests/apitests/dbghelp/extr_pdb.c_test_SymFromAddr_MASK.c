#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ModBase; int Address; int /*<<< orphan*/  Name; int /*<<< orphan*/  Tag; int /*<<< orphan*/  Flags; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  SYMBOL_INFO ;
typedef  TYPE_1__* PSYMBOL_INFO ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD64 ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_MOD_NOT_FOUND ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MAX_SYM_NAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  SymTagFunction ; 
 int /*<<< orphan*/  SymTagPublicSymbol ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(HANDLE hProc, DWORD64 BaseAddress)
{
    BOOL Ret;
    char buffer[sizeof(SYMBOL_INFO) + MAX_SYM_NAME * sizeof(TCHAR)];
    PSYMBOL_INFO pSymbol = (PSYMBOL_INFO)buffer;

    DWORD64 Displacement;
    DWORD dwErr;

    /* No address found before load address of module */
    Displacement = 0;
    FUNC1(buffer);
    Ret = FUNC2(hProc, BaseAddress -1, &Displacement, pSymbol);
    dwErr = FUNC0();
    FUNC4(Ret, FALSE);
    FUNC3(dwErr, ERROR_MOD_NOT_FOUND);

    /* Right at the start of the module is recognized as the first symbol found */
    Displacement = 0;
    FUNC1(buffer);
    Ret = FUNC2(hProc, BaseAddress, &Displacement, pSymbol);
    FUNC4(Ret, TRUE);
    FUNC6(Displacement, 0xffffffffffffffff);
    FUNC6(pSymbol->ModBase, BaseAddress);
    FUNC3(pSymbol->Flags, 0);
    FUNC6(pSymbol->Address, BaseAddress + 0x1010);
    FUNC3(pSymbol->Tag, SymTagFunction);
    FUNC5(pSymbol->Name, "DllMain");

    /* The actual first instruction of the function */
    Displacement = 0;
    FUNC1(buffer);
    Ret = FUNC2(hProc, BaseAddress + 0x1010, &Displacement, pSymbol);
    FUNC4(Ret, TRUE);
    FUNC6(Displacement, 0);
    FUNC6(pSymbol->ModBase, BaseAddress);
    FUNC3(pSymbol->Flags, 0);
    FUNC6(pSymbol->Address, BaseAddress + 0x1010);
    FUNC3(pSymbol->Tag, SymTagFunction);
    FUNC5(pSymbol->Name, "DllMain");

    /* The last instruction in the function */
    Displacement = 0;
    FUNC1(buffer);
    Ret = FUNC2(hProc, BaseAddress + 0x102D, &Displacement, pSymbol);
    FUNC4(Ret, TRUE);
    FUNC6(Displacement, 0x1d);
    FUNC6(pSymbol->ModBase, BaseAddress);
    FUNC3(pSymbol->Flags, 0);
    FUNC6(pSymbol->Address, BaseAddress + 0x1010);
    FUNC3(pSymbol->Tag, SymTagFunction);
    FUNC5(pSymbol->Name, "DllMain");

    /* The padding below the function */
    Displacement = 0;
    FUNC1(buffer);
    Ret = FUNC2(hProc, BaseAddress + 0x102E, &Displacement, pSymbol);
    FUNC4(Ret, TRUE);
    FUNC6(Displacement, 0x1e);
    FUNC6(pSymbol->ModBase, BaseAddress);
    FUNC3(pSymbol->Flags, 0);
    FUNC6(pSymbol->Address, BaseAddress + 0x1010);
    FUNC3(pSymbol->Tag, SymTagFunction);
    FUNC5(pSymbol->Name, "DllMain");

    /* One byte before the next function */
    Displacement = 0;
    FUNC1(buffer);
    Ret = FUNC2(hProc, BaseAddress + 0x103f, &Displacement, pSymbol);
    FUNC4(Ret, TRUE);
    FUNC6(Displacement, 0x2f);
    FUNC6(pSymbol->ModBase, BaseAddress);
    FUNC3(pSymbol->Flags, 0);
    FUNC6(pSymbol->Address, BaseAddress + 0x1010);
    FUNC3(pSymbol->Tag, SymTagFunction);
    FUNC5(pSymbol->Name, "DllMain");

    /* First byte of the next function */
    Displacement = 0;
    FUNC1(buffer);
    Ret = FUNC2(hProc, BaseAddress + 0x1040, &Displacement, pSymbol);
    FUNC4(Ret, TRUE);
    FUNC6(Displacement, 0);
    FUNC6(pSymbol->ModBase, BaseAddress);
    FUNC3(pSymbol->Flags, 0);
    FUNC6(pSymbol->Address, BaseAddress + 0x1040);
    FUNC3(pSymbol->Tag, SymTagFunction);
    FUNC5(pSymbol->Name, "FfsChkdsk");

    if (!FUNC8(hProc, BaseAddress))
    {
        FUNC7("dbghelp.dll too old or cannot read this symbol!\n");
    }
    else
    {
        /* .idata */
        Displacement = 0;
        FUNC1(buffer);
        Ret = FUNC2(hProc, BaseAddress + 0x2000, &Displacement, pSymbol);
        FUNC4(Ret, TRUE);
        FUNC6(Displacement, 0);
        FUNC6(pSymbol->ModBase, BaseAddress);
        FUNC3(pSymbol->Flags, 0);
        FUNC6(pSymbol->Address, BaseAddress + 0x2000);
        FUNC3(pSymbol->Tag, SymTagPublicSymbol);
        FUNC5(pSymbol->Name, "__imp__DbgPrint");
    }
}