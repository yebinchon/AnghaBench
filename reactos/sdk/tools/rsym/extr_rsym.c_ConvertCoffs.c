
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct StringHashTable {int dummy; } ;
typedef int ULONG_PTR ;
typedef int ULONG ;
struct TYPE_14__ {scalar_t__ e_zeroes; int e_offset; } ;
struct TYPE_15__ {int e_name; TYPE_1__ e; } ;
struct TYPE_19__ {scalar_t__ e_sclass; int e_scnum; scalar_t__ e_numaux; TYPE_2__ e; int e_value; int e_type; } ;
struct TYPE_18__ {int NumberOfSections; } ;
struct TYPE_17__ {scalar_t__ VirtualAddress; } ;
struct TYPE_16__ {scalar_t__ SourceLine; int FunctionOffset; scalar_t__ FileOffset; int Address; } ;
typedef int ROSSYM_ENTRY ;
typedef TYPE_3__* PROSSYM_ENTRY ;
typedef TYPE_4__* PIMAGE_SECTION_HEADER ;
typedef TYPE_5__* PIMAGE_FILE_HEADER ;
typedef TYPE_6__* PCOFF_SYMENT ;
typedef int FuncName ;
typedef int COFF_SYMENT ;


 scalar_t__ C_EXT ;
 scalar_t__ CompareSymEntry ;
 size_t E_SYMNMLEN ;
 int FindOrAddString (struct StringHashTable*,char*,int*,void*) ;
 scalar_t__ ISFCN (int ) ;
 int StringHashTableFree (struct StringHashTable*) ;
 int StringHashTableInit (struct StringHashTable*,int,char*) ;
 int fprintf (int ,char*,...) ;
 int free (TYPE_3__*) ;
 TYPE_3__* malloc (int) ;
 int memcpy (char*,int ,size_t) ;
 int memset (TYPE_3__*,int ,int) ;
 int qsort (TYPE_3__*,int,int,int (*) (void const*,void const*)) ;
 int stderr ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
ConvertCoffs(ULONG *SymbolsCount, PROSSYM_ENTRY *SymbolsBase,
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

    *SymbolsBase = malloc(Count * sizeof(ROSSYM_ENTRY));
    if (*SymbolsBase == ((void*)0))
    {
        fprintf(stderr, "Unable to allocate memory for converted COFF symbols\n");
        return 1;
    }
    *SymbolsCount = 0;
    Current = *SymbolsBase;

    StringHashTableInit(&StringHash, *StringsLength, (char*)StringsBase);

    for (i = 0; i < Count; i++)
    {
        if (ISFCN(CoffEntry[i].e_type) || C_EXT == CoffEntry[i].e_sclass)
        {
            Current->Address = CoffEntry[i].e_value;
            if (CoffEntry[i].e_scnum > 0)
            {
                if (PEFileHeader->NumberOfSections < CoffEntry[i].e_scnum)
                {
                    free(*SymbolsBase);
                    fprintf(stderr,
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
                if (sizeof(FuncName) <= strlen((char *) CoffStringsBase + CoffEntry[i].e.e.e_offset))
                {
                    free(*SymbolsBase);
                    fprintf(stderr, "Function name too long\n");
                    StringHashTableFree(&StringHash);
                    return 1;
                }
                strcpy(FuncName, (char *) CoffStringsBase + CoffEntry[i].e.e.e_offset);
            }
            else
            {
                memcpy(FuncName, CoffEntry[i].e.e_name, E_SYMNMLEN);
                FuncName[E_SYMNMLEN] = '\0';
            }


            p = strrchr(FuncName, '@');
            if (p != ((void*)0))
            {
                *p = '\0';
            }
            p = ('_' == FuncName[0] || '@' == FuncName[0] ? FuncName + 1 : FuncName);
            Current->FunctionOffset = FindOrAddString(&StringHash,
                                                      p,
                                                      StringsLength,
                                                      StringsBase);
            Current->SourceLine = 0;
            memset(++Current, 0, sizeof(*Current));
        }

        i += CoffEntry[i].e_numaux;
    }

    *SymbolsCount = (Current - *SymbolsBase + 1);
    qsort(*SymbolsBase, *SymbolsCount, sizeof(ROSSYM_ENTRY), (int (*)(const void *, const void *)) CompareSymEntry);

    StringHashTableFree(&StringHash);

    return 0;
}
