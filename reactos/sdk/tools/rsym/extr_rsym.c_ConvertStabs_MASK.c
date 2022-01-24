#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct StringHashTable {int dummy; } ;
typedef  scalar_t__ ULONG_PTR ;
typedef  int ULONG ;
struct TYPE_9__ {scalar_t__ Address; int /*<<< orphan*/  SourceLine; void* FunctionOffset; void* FileOffset; } ;
struct TYPE_8__ {scalar_t__ n_value; int n_type; int n_strx; int /*<<< orphan*/  n_desc; } ;
typedef  int /*<<< orphan*/  STAB_ENTRY ;
typedef  int /*<<< orphan*/  ROSSYM_ENTRY ;
typedef  TYPE_1__* PSTAB_ENTRY ;
typedef  TYPE_2__* PROSSYM_ENTRY ;
typedef  int /*<<< orphan*/  PIMAGE_SECTION_HEADER ;
typedef  int /*<<< orphan*/  PIMAGE_FILE_HEADER ;
typedef  int /*<<< orphan*/  FuncName ;

/* Variables and functions */
 scalar_t__ CompareSymEntry ; 
 void* FUNC0 (struct StringHashTable*,char*,int*,void*) ; 
#define  N_BINCL 132 
#define  N_FUN 131 
#define  N_SLINE 130 
#define  N_SO 129 
#define  N_SOL 128 
 int /*<<< orphan*/  FUNC1 (struct StringHashTable*) ; 
 int /*<<< orphan*/  FUNC2 (struct StringHashTable*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int,int (*) (void const*,void const*)) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int
FUNC11(ULONG *SymbolsCount, PROSSYM_ENTRY *SymbolsBase,
             ULONG *StringsLength, void *StringsBase,
             ULONG StabSymbolsLength, void *StabSymbolsBase,
             ULONG StabStringsLength, void *StabStringsBase,
             ULONG_PTR ImageBase, PIMAGE_FILE_HEADER PEFileHeader,
             PIMAGE_SECTION_HEADER PESectionHeaders)
{
    PSTAB_ENTRY StabEntry;
    ULONG Count, i;
    ULONG_PTR Address, LastFunctionAddress;
    int First = 1;
    char *Name;
    ULONG NameLen;
    char FuncName[256];
    PROSSYM_ENTRY Current;
    struct StringHashTable StringHash;

    StabEntry = StabSymbolsBase;
    Count = StabSymbolsLength / sizeof(STAB_ENTRY);
    *SymbolsCount = 0;

    if (Count == 0)
    {
        /* No symbol info */
        *SymbolsBase = NULL;
        return 0;
    }

    *SymbolsBase = FUNC5(Count * sizeof(ROSSYM_ENTRY));
    if (*SymbolsBase == NULL)
    {
        FUNC3(stderr, "Failed to allocate memory for converted .stab symbols\n");
        return 1;
    }
    Current = *SymbolsBase;
    FUNC7(Current, 0, sizeof(*Current));

    FUNC2(&StringHash, *StringsLength, (char *)StringsBase);

    LastFunctionAddress = 0;
    for (i = 0; i < Count; i++)
    {
        if (LastFunctionAddress == 0)
        {
            Address = StabEntry[i].n_value - ImageBase;
        }
        else
        {
            Address = LastFunctionAddress + StabEntry[i].n_value;
        }
        switch (StabEntry[i].n_type)
        {
            case N_SO:
            case N_SOL:
            case N_BINCL:
                Name = (char *) StabStringsBase + StabEntry[i].n_strx;
                if (StabStringsLength < StabEntry[i].n_strx
                    || *Name == '\0' || Name[FUNC10(Name) - 1] == '/'
                    || Name[FUNC10(Name) - 1] == '\\'
                    || StabEntry[i].n_value < ImageBase)
                {
                    continue;
                }
                if (First || Address != Current->Address)
                {
                    if (!First)
                    {
                        FUNC7(++Current, 0, sizeof(*Current));
                        Current->FunctionOffset = Current[-1].FunctionOffset;
                    }
                    else
                        First = 0;
                    Current->Address = Address;
                }
                Current->FileOffset = FUNC0(&StringHash,
                                                      (char *)StabStringsBase + StabEntry[i].n_strx,
                                                      StringsLength,
                                                      StringsBase);
                break;
            case N_FUN:
                if (StabEntry[i].n_desc == 0 || StabEntry[i].n_value < ImageBase)
                {
                    LastFunctionAddress = 0; /* line # 0 = end of function */
                    continue;
                }
                if (First || Address != Current->Address)
                {
                    if (!First)
                        FUNC7(++Current, 0, sizeof(*Current));
                    else
                        First = 0;
                    Current->Address = Address;
                    Current->FileOffset = Current[-1].FileOffset;
                }
                Name = (char *)StabStringsBase + StabEntry[i].n_strx;
                NameLen = FUNC9(Name, ":");
                if (sizeof(FuncName) <= NameLen)
                {
                    FUNC4(*SymbolsBase);
                    FUNC3(stderr, "Function name too long\n");
                    return 1;
                }
                FUNC6(FuncName, Name, NameLen);
                FuncName[NameLen] = '\0';
                Current->FunctionOffset = FUNC0(&StringHash,
                                                          FuncName,
                                                          StringsLength,
                                                          StringsBase);
                Current->SourceLine = 0;
                LastFunctionAddress = Address;
                break;
            case N_SLINE:
                if (First || Address != Current->Address)
                {
                    if (!First)
                    {
                        FUNC7(++Current, 0, sizeof(*Current));
                        Current->FileOffset = Current[-1].FileOffset;
                        Current->FunctionOffset = Current[-1].FunctionOffset;
                    }
                    else
                        First = 0;
                    Current->Address = Address;
                }
                Current->SourceLine = StabEntry[i].n_desc;
                break;
            default:
                continue;
        }
    }
    *SymbolsCount = (Current - *SymbolsBase + 1);

    FUNC8(*SymbolsBase, *SymbolsCount, sizeof(ROSSYM_ENTRY), (int (*)(const void *, const void *)) CompareSymEntry);

    FUNC1(&StringHash);

    return 0;
}