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
struct TYPE_3__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  Tag; int /*<<< orphan*/  Address; int /*<<< orphan*/  Flags; int /*<<< orphan*/  ModBase; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  SYMBOL_INFO ;
typedef  TYPE_1__* PSYMBOL_INFO ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD64 ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_SYM_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int SymTagFunction ; 
 int SymTagPublicSymbol ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(HANDLE hProc, DWORD64 BaseAddress)
{
    BOOL Ret;
    char buffer[sizeof(SYMBOL_INFO) + MAX_SYM_NAME * sizeof(TCHAR)];
    PSYMBOL_INFO pSymbol = (PSYMBOL_INFO)buffer;

    if (!FUNC7(hProc, BaseAddress))
    {
        FUNC6("dbghelp.dll too old or cannot enumerate symbols!\n");
    }
    else
    {
        FUNC0(buffer);
        Ret = FUNC1(hProc, "DllMain", pSymbol);
        FUNC3(Ret, TRUE);
        FUNC5(pSymbol->ModBase, BaseAddress);
        FUNC2(pSymbol->Flags, 0);
        FUNC5(pSymbol->Address, BaseAddress + 0x1010);
        FUNC2(pSymbol->Tag, SymTagFunction);
        FUNC4(pSymbol->Name, "DllMain");

        FUNC0(buffer);
        Ret = FUNC1(hProc, "_DllMain@12", pSymbol);
        FUNC3(Ret, TRUE);
        FUNC5(pSymbol->ModBase, BaseAddress);
        FUNC2(pSymbol->Flags, 0x400000);   // ??
        FUNC5(pSymbol->Address, BaseAddress + 0x1010);
        FUNC2(pSymbol->Tag, SymTagPublicSymbol);
        FUNC4(pSymbol->Name, "_DllMain@12");

        FUNC0(buffer);
        Ret = FUNC1(hProc, "FfsChkdsk", pSymbol);
        FUNC3(Ret, TRUE);
        FUNC5(pSymbol->ModBase, BaseAddress);
        FUNC2(pSymbol->Flags, 0);
        FUNC5(pSymbol->Address, BaseAddress + 0x1040);
        FUNC2(pSymbol->Tag, SymTagFunction);
        FUNC4(pSymbol->Name, "FfsChkdsk");

        FUNC0(buffer);
        Ret = FUNC1(hProc, "_FfsChkdsk@24", pSymbol);
        FUNC3(Ret, TRUE);
        FUNC5(pSymbol->ModBase, BaseAddress);
        FUNC2(pSymbol->Flags, 0x400000);   // ??
        FUNC5(pSymbol->Address, BaseAddress + 0x1040);
        FUNC2(pSymbol->Tag, SymTagPublicSymbol);
        FUNC4(pSymbol->Name, "_FfsChkdsk@24");

        FUNC0(buffer);
        Ret = FUNC1(hProc, "FfsFormat", pSymbol);
        FUNC3(Ret, TRUE);
        FUNC5(pSymbol->ModBase, BaseAddress);
        FUNC2(pSymbol->Flags, 0);
        FUNC5(pSymbol->Address, BaseAddress + 0x1070);
        FUNC2(pSymbol->Tag, SymTagFunction);
        FUNC4(pSymbol->Name, "FfsFormat");

        FUNC0(buffer);
        Ret = FUNC1(hProc, "_FfsFormat@24", pSymbol);
        FUNC3(Ret, TRUE);
        FUNC5(pSymbol->ModBase, BaseAddress);
        FUNC2(pSymbol->Flags, 0x400000);   // ??
        FUNC5(pSymbol->Address, BaseAddress + 0x1070);
        FUNC2(pSymbol->Tag, SymTagPublicSymbol);
        FUNC4(pSymbol->Name, "_FfsFormat@24");
    }
}