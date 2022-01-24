#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct StringHashTable {int dummy; } ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  int ULONG ;
struct TYPE_14__ {scalar_t__ e_zeroes; int e_offset; } ;
struct TYPE_15__ {int /*<<< orphan*/  e_name; TYPE_1__ e; } ;
struct TYPE_19__ {scalar_t__ e_sclass; int e_scnum; scalar_t__ e_numaux; TYPE_2__ e; int /*<<< orphan*/  e_value; int /*<<< orphan*/  e_type; } ;
struct TYPE_18__ {int NumberOfSections; } ;
struct TYPE_17__ {scalar_t__ VirtualAddress; } ;
struct TYPE_16__ {scalar_t__ SourceLine; int /*<<< orphan*/  FunctionOffset; scalar_t__ FileOffset; int /*<<< orphan*/  Address; } ;
typedef  int /*<<< orphan*/  ROSSYM_ENTRY ;
typedef  TYPE_3__* PROSSYM_ENTRY ;
typedef  TYPE_4__* PIMAGE_SECTION_HEADER ;
typedef  TYPE_5__* PIMAGE_FILE_HEADER ;
typedef  TYPE_6__* PCOFF_SYMENT ;
typedef  int /*<<< orphan*/  FuncName ;
typedef  int /*<<< orphan*/  COFF_SYMENT ;

/* Variables and functions */
 scalar_t__ C_EXT ; 
 scalar_t__ CompareSymEntry ; 
 size_t E_SYMNMLEN ; 
 int /*<<< orphan*/  FUNC0 (struct StringHashTable*,char*,int*,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct StringHashTable*) ; 
 int /*<<< orphan*/  FUNC3 (struct StringHashTable*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int,int (*) (void const*,void const*)) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (char*) ; 
 char* FUNC12 (char*,char) ; 

__attribute__((used)) static int
FUNC13(ULONG *SymbolsCount, PROSSYM_ENTRY *SymbolsBase,
             ULONG *StringsLength, void *StringsBase,
             ULONG CoffSymbolsLength, void *CoffSymbolsBase,
             ULONG CoffStringsLength, void *CoffStringsBase,
             ULONG_PTR ImageBase, PIMAGE_FILE_HEADER PEFileHeader,
             PIMAGE_SECTION_HEADER PESectionHeaders)
{
    ULONG Count, i;
    PCOFF_SYMENT CoffEntry;
    char FuncName[256], FileName[1024];
    char *p;
    PROSSYM_ENTRY Current;
    struct StringHashTable StringHash;

    CoffEntry = (PCOFF_SYMENT) CoffSymbolsBase;
    Count = CoffSymbolsLength / sizeof(COFF_SYMENT);

    *SymbolsBase = FUNC6(Count * sizeof(ROSSYM_ENTRY));
    if (*SymbolsBase == NULL)
    {
        FUNC4(stderr, "Unable to allocate memory for converted COFF symbols\n");
        return 1;
    }
    *SymbolsCount = 0;
    Current = *SymbolsBase;

    FUNC3(&StringHash, *StringsLength, (char*)StringsBase);

    for (i = 0; i < Count; i++)
    {
        if (FUNC1(CoffEntry[i].e_type) || C_EXT == CoffEntry[i].e_sclass)
        {
            Current->Address = CoffEntry[i].e_value;
            if (CoffEntry[i].e_scnum > 0)
            {
                if (PEFileHeader->NumberOfSections < CoffEntry[i].e_scnum)
                {
                    FUNC5(*SymbolsBase);
                    FUNC4(stderr,
                            "Invalid section number %d in COFF symbols (only %d sections present)\n",
                            CoffEntry[i].e_scnum,
                            PEFileHeader->NumberOfSections);
                    return 1;
                }
                Current->Address += PESectionHeaders[CoffEntry[i].e_scnum - 1].VirtualAddress;
            }
            Current->FileOffset = 0;
            if (CoffEntry[i].e.e.e_zeroes == 0)
            {
                if (sizeof(FuncName) <= FUNC11((char *) CoffStringsBase + CoffEntry[i].e.e.e_offset))
                {
                    FUNC5(*SymbolsBase);
                    FUNC4(stderr, "Function name too long\n");
                    FUNC2(&StringHash);
                    return 1;
                }
                FUNC10(FuncName, (char *) CoffStringsBase + CoffEntry[i].e.e.e_offset);
            }
            else
            {
                FUNC7(FuncName, CoffEntry[i].e.e_name, E_SYMNMLEN);
                FuncName[E_SYMNMLEN] = '\0';
            }

            /* Name demangling: stdcall */
            p = FUNC12(FuncName, '@');
            if (p != NULL)
            {
                *p = '\0';
            }
            p = ('_' == FuncName[0] || '@' == FuncName[0] ? FuncName + 1 : FuncName);
            Current->FunctionOffset = FUNC0(&StringHash,
                                                      p,
                                                      StringsLength,
                                                      StringsBase);
            Current->SourceLine = 0;
            FUNC8(++Current, 0, sizeof(*Current));
        }

        i += CoffEntry[i].e_numaux;
    }

    *SymbolsCount = (Current - *SymbolsBase + 1);
    FUNC9(*SymbolsBase, *SymbolsCount, sizeof(ROSSYM_ENTRY), (int (*)(const void *, const void *)) CompareSymEntry);

    FUNC2(&StringHash);

    return 0;
}