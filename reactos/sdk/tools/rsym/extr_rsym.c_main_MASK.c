#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  elfhdr ;
typedef  scalar_t__ ULONG ;
struct TYPE_16__ {scalar_t__ e_magic; long e_lfanew; } ;
struct TYPE_15__ {int SizeOfOptionalHeader; } ;
struct TYPE_14__ {scalar_t__ ImageBase; } ;
struct TYPE_13__ {int SymbolsOffset; int StringsOffset; scalar_t__ StringsLength; scalar_t__ SymbolsLength; } ;
typedef  int /*<<< orphan*/  SYMBOLFILE_HEADER ;
typedef  int /*<<< orphan*/  ROSSYM_ENTRY ;
typedef  TYPE_1__* PSYMBOLFILE_HEADER ;
typedef  void* PROSSYM_ENTRY ;
typedef  scalar_t__ PIMAGE_SECTION_HEADER ;
typedef  TYPE_2__* PIMAGE_OPTIONAL_HEADER ;
typedef  TYPE_3__* PIMAGE_FILE_HEADER ;
typedef  TYPE_4__* PIMAGE_DOS_HEADER ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,void**,scalar_t__*,void*,scalar_t__,void*,scalar_t__,void*,scalar_t__,TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC1 (void*,int,char*,scalar_t__*,void**,scalar_t__*,void**) ; 
 scalar_t__ FUNC2 (scalar_t__*,void**,scalar_t__*,void*,scalar_t__,void*,scalar_t__,void*,scalar_t__,TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void*,TYPE_4__*,TYPE_3__*,TYPE_2__*,scalar_t__,scalar_t__,void*) ; 
 int E_SYMNMLEN ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC4 (void*,TYPE_3__*,scalar_t__,scalar_t__*,void**,scalar_t__*,void**) ; 
 scalar_t__ FUNC5 (void*,TYPE_3__*,scalar_t__,scalar_t__*,void**,scalar_t__*,void**) ; 
 scalar_t__ IMAGE_DOS_MAGIC ; 
 scalar_t__ FUNC6 (scalar_t__*,void**,scalar_t__,void*,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (void*,void*,char*,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (void*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 char* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 void* FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 void* FUNC19 (char*,size_t*) ; 
 void* FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (void*,char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 void* FUNC25 (void*,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 
 char* FUNC27 (char*) ; 

int FUNC28(int argc, char* argv[])
{
    PSYMBOLFILE_HEADER SymbolFileHeader;
    PIMAGE_DOS_HEADER PEDosHeader;
    PIMAGE_FILE_HEADER PEFileHeader;
    PIMAGE_OPTIONAL_HEADER PEOptHeader;
    PIMAGE_SECTION_HEADER PESectionHeaders;
    ULONG ImageBase;
    void *StabBase;
    ULONG StabsLength;
    void *StabStringBase;
    ULONG StabStringsLength;
    void *CoffBase = NULL;
    ULONG CoffsLength;
    void *CoffStringBase = NULL;
    ULONG CoffStringsLength;
    char* path1;
    char* path2;
    FILE* out;
    void *StringBase = NULL;
    ULONG StringsLength = 0;
    ULONG StabSymbolsCount = 0;
    PROSSYM_ENTRY StabSymbols = NULL;
    ULONG CoffSymbolsCount = 0;
    PROSSYM_ENTRY CoffSymbols = NULL;
    ULONG MergedSymbolsCount = 0;
    PROSSYM_ENTRY MergedSymbols = NULL;
    size_t FileSize;
    void *FileData;
    ULONG RosSymLength;
    void *RosSymSection;
    DWORD module_base;
    void *file;
    char elfhdr[4] = { '\177', 'E', 'L', 'F' };
    BOOLEAN UseDbgHelp = FALSE;
    int arg, argstate = 0;
    char *SourcePath = NULL;

    for (arg = 1; arg < argc; arg++)
    {
        switch (argstate)
        {
            default:
                argstate = -1;
                break;

            case 0:
                if (!FUNC26(argv[arg], "-s"))
                {
                    argstate = 1;
                }
                else
                {
                    argstate = 2;
                    path1 = FUNC13(argv[arg]);
                }
            break;

            case 1:
                FUNC18(SourcePath);
                SourcePath = FUNC27(argv[arg]);
                argstate = 0;
                break;

            case 2:
                path2 = FUNC13(argv[arg]);
                argstate = 3;
                break;
        }
    }

    if (argstate != 3)
    {
        FUNC17(stderr, "Usage: rsym [-s <sources>] <input> <output>\n");
        FUNC14(1);
    }

    FileData = FUNC19(path1, &FileSize);
    if (!FileData)
    {
        FUNC17(stderr, "An error occured loading '%s'\n", path1);
        FUNC14(1);
    }

    file = FUNC16(path1, "rb");

    /* Check if MZ header exists  */
    PEDosHeader = (PIMAGE_DOS_HEADER) FileData;
    if (PEDosHeader->e_magic != IMAGE_DOS_MAGIC ||
        PEDosHeader->e_lfanew == 0L)
    {
        /* Ignore elf */
        if (!FUNC21(PEDosHeader, elfhdr, sizeof(elfhdr)))
            FUNC14(0);
        FUNC24("Input file is not a PE image.\n");
        FUNC18(FileData);
        FUNC14(1);
    }

    /* Locate PE file header  */
    /* sizeof(ULONG) = sizeof(MAGIC) */
    PEFileHeader = (PIMAGE_FILE_HEADER)((char *) FileData + PEDosHeader->e_lfanew + sizeof(ULONG));

    /* Locate optional header */
    FUNC12(sizeof(ULONG) == 4);
    PEOptHeader = (PIMAGE_OPTIONAL_HEADER)(PEFileHeader + 1);
    ImageBase = PEOptHeader->ImageBase;

    /* Locate PE section headers  */
    PESectionHeaders = (PIMAGE_SECTION_HEADER)((char *) PEOptHeader + PEFileHeader->SizeOfOptionalHeader);

    if (FUNC5(FileData,
                    PEFileHeader,
                    PESectionHeaders,
                    &StabsLength,
                    &StabBase,
                    &StabStringsLength,
                    &StabStringBase))
    {
        FUNC18(FileData);
        FUNC14(1);
    }

    if (StabsLength == 0)
    {
        // SYMOPT_AUTO_PUBLICS
        // SYMOPT_FAVOR_COMPRESSED
        // SYMOPT_LOAD_ANYTHING
        // SYMOPT_LOAD_LINES
        FUNC10(0x10000 | 0x800000 | 0x40 | 0x10);
        FUNC8(FileData, ".", 0);

        module_base = FUNC9(FileData, file, path1, path1, 0, FileSize) & 0xffffffff;

        if (FUNC1(FileData,
                           module_base,
                           SourcePath,
                           &StabSymbolsCount,
                           &StabSymbols,
                           &StringsLength,
                           &StringBase))
        {
            FUNC18(FileData);
            FUNC14(1);
        }

        UseDbgHelp = TRUE;
        FUNC11(FileData, module_base);
        FUNC7(FileData);
    }

    if (FUNC4(FileData,
                    PEFileHeader,
                    PESectionHeaders,
                    &CoffsLength,
                    &CoffBase,
                    &CoffStringsLength,
                    &CoffStringBase))
    {
        FUNC18(FileData);
        FUNC14(1);
    }

    if (!UseDbgHelp)
    {
        StringBase = FUNC20(1 + StringsLength + CoffStringsLength +
                            (CoffsLength / sizeof(ROSSYM_ENTRY)) * (E_SYMNMLEN + 1));
        if (StringBase == NULL)
        {
            FUNC18(FileData);
            FUNC17(stderr, "Failed to allocate memory for strings table\n");
            FUNC14(1);
        }
        /* Make offset 0 into an empty string */
        *((char *) StringBase) = '\0';
        StringsLength = 1;

        if (FUNC2(&StabSymbolsCount,
                         &StabSymbols,
                         &StringsLength,
                         StringBase,
                         StabsLength,
                         StabBase,
                         StabStringsLength,
                         StabStringBase,
                         ImageBase,
                         PEFileHeader,
                         PESectionHeaders))
        {
            FUNC18(StringBase);
            FUNC18(FileData);
            FUNC17(stderr, "Failed to allocate memory for strings table\n");
            FUNC14(1);
        }
    }
    else
    {
        StringBase = FUNC25(StringBase, StringsLength + CoffStringsLength);
        if (!StringBase)
        {
            FUNC18(FileData);
            FUNC17(stderr, "Failed to allocate memory for strings table\n");
            FUNC14(1);
        }
    }

    if (FUNC0(&CoffSymbolsCount,
                     &CoffSymbols,
                     &StringsLength,
                     StringBase,
                     CoffsLength,
                     CoffBase,
                     CoffStringsLength,
                     CoffStringBase,
                     ImageBase,
                     PEFileHeader,
                     PESectionHeaders))
    {
        if (StabSymbols)
        {
            FUNC18(StabSymbols);
        }
        FUNC18(StringBase);
        FUNC18(FileData);
        FUNC14(1);
    }

    if (FUNC6(&MergedSymbolsCount,
                           &MergedSymbols,
                           StabSymbolsCount,
                           StabSymbols,
                           CoffSymbolsCount,
                           CoffSymbols))
    {
        if (CoffSymbols)
        {
            FUNC18(CoffSymbols);
        }
        if (StabSymbols)
        {
            FUNC18(StabSymbols);
        }
        FUNC18(StringBase);
        FUNC18(FileData);
        FUNC14(1);
    }

    if (CoffSymbols)
    {
        FUNC18(CoffSymbols);
    }
    if (StabSymbols)
    {
        FUNC18(StabSymbols);
    }
    if (MergedSymbolsCount == 0)
    {
        RosSymLength = 0;
        RosSymSection = NULL;
    }
    else
    {
        RosSymLength = sizeof(SYMBOLFILE_HEADER) +
                       MergedSymbolsCount * sizeof(ROSSYM_ENTRY) +
                       StringsLength;

        RosSymSection = FUNC20(RosSymLength);
        if (RosSymSection == NULL)
        {
            FUNC18(MergedSymbols);
            FUNC18(StringBase);
            FUNC18(FileData);
            FUNC17(stderr, "Unable to allocate memory for .rossym section\n");
            FUNC14(1);
        }
        FUNC23(RosSymSection, '\0', RosSymLength);

        SymbolFileHeader = (PSYMBOLFILE_HEADER)RosSymSection;
        SymbolFileHeader->SymbolsOffset = sizeof(SYMBOLFILE_HEADER);
        SymbolFileHeader->SymbolsLength = MergedSymbolsCount * sizeof(ROSSYM_ENTRY);
        SymbolFileHeader->StringsOffset = SymbolFileHeader->SymbolsOffset +
                                          SymbolFileHeader->SymbolsLength;
        SymbolFileHeader->StringsLength = StringsLength;

        FUNC22((char *) RosSymSection + SymbolFileHeader->SymbolsOffset,
               MergedSymbols,
               SymbolFileHeader->SymbolsLength);

        FUNC22((char *) RosSymSection + SymbolFileHeader->StringsOffset,
               StringBase,
               SymbolFileHeader->StringsLength);

        FUNC18(MergedSymbols);
    }

    FUNC18(StringBase);
    out = FUNC16(path2, "wb");
    if (out == NULL)
    {
        FUNC24("Cannot open output file");
        FUNC18(RosSymSection);
        FUNC18(FileData);
        FUNC14(1);
    }

    if (FUNC3(out,
                         FileData,
                         PEDosHeader,
                         PEFileHeader,
                         PEOptHeader,
                         PESectionHeaders,
                         RosSymLength,
                         RosSymSection))
    {
        FUNC15(out);
        if (RosSymSection)
        {
            FUNC18(RosSymSection);
        }
        FUNC18(FileData);
        FUNC14(1);
    }

    FUNC15(out);
    if (RosSymSection)
    {
        FUNC18(RosSymSection);
    }
    FUNC18(FileData);

    return 0;
}