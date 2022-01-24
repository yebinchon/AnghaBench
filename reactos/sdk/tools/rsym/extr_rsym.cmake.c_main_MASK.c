#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  elfhdr ;
struct TYPE_14__ {scalar_t__ e_magic; long e_lfanew; } ;
struct TYPE_13__ {int SizeOfOptionalHeader; unsigned int NumberOfSections; } ;
struct TYPE_11__ {scalar_t__ SizeOfImage; int /*<<< orphan*/  SectionAlignment; } ;
struct TYPE_12__ {TYPE_3__ OptionalHeader; TYPE_5__ FileHeader; } ;
struct TYPE_9__ {scalar_t__ VirtualSize; } ;
struct TYPE_10__ {int Characteristics; scalar_t__ SizeOfRawData; scalar_t__ PointerToRawData; scalar_t__ VirtualAddress; TYPE_1__ Misc; } ;
typedef  int /*<<< orphan*/  PSYMBOLFILE_HEADER ;
typedef  TYPE_2__* PIMAGE_SECTION_HEADER ;
typedef  TYPE_3__* PIMAGE_OPTIONAL_HEADER ;
typedef  TYPE_4__* PIMAGE_NT_HEADERS ;
typedef  TYPE_5__* PIMAGE_FILE_HEADER ;
typedef  TYPE_6__* PIMAGE_DOS_HEADER ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ IMAGE_DOS_MAGIC ; 
 int IMAGE_SCN_CNT_INITIALIZED_DATA ; 
 int IMAGE_SCN_MEM_DISCARDABLE ; 
 int IMAGE_SCN_MEM_PURGEABLE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int,size_t,int /*<<< orphan*/ *) ; 
 void* FUNC9 (char*,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC12(int argc, char* argv[])
{
    unsigned int i;
    PSYMBOLFILE_HEADER SymbolFileHeader;
    PIMAGE_NT_HEADERS NtHeaders;
    PIMAGE_DOS_HEADER DosHeader;
    PIMAGE_FILE_HEADER FileHeader;
    PIMAGE_OPTIONAL_HEADER OptionalHeader;
    PIMAGE_SECTION_HEADER SectionHeaders, LastSection;
    char* path1;
    char* path2;
    FILE* out;
    size_t FileSize;
    void *FileData;
    char elfhdr[] = { '\377', 'E', 'L', 'F' };

    if (argc != 3)
    {
        FUNC6(stderr, "Usage: rsym <exefile> <symfile>\n");
        FUNC3(1);
    }

    path1 = FUNC2(argv[1]);
    path2 = FUNC2(argv[2]);

    /* Load the input file into memory */
    FileData = FUNC9( path1, &FileSize);
    if ( !FileData )
    {
        FUNC6(stderr, "An error occured loading '%s'\n", path1);
        FUNC3(1);
    }

    /* Check if MZ header exists  */
    DosHeader = (PIMAGE_DOS_HEADER) FileData;
    if (DosHeader->e_magic != IMAGE_DOS_MAGIC || DosHeader->e_lfanew == 0L)
    {
        /* Ignore elf */
        if (!FUNC10(DosHeader, elfhdr, sizeof(elfhdr)))
            FUNC3(0);
        FUNC11("Input file is not a PE image.\n");
        FUNC7(FileData);
        FUNC3(1);
    }

    /* Locate the headers */
    NtHeaders = (PIMAGE_NT_HEADERS)((char*)FileData + DosHeader->e_lfanew);
    FileHeader = &NtHeaders->FileHeader;
    OptionalHeader = &NtHeaders->OptionalHeader;

    /* Locate PE section headers  */
    SectionHeaders = (PIMAGE_SECTION_HEADER)((char*)OptionalHeader +
                                             FileHeader->SizeOfOptionalHeader);

    /* Loop all sections */
    for (i = 0; i < FileHeader->NumberOfSections; i++)
    {
        /* Check if this is a debug section */
        if (FUNC0(&SectionHeaders[i]))
        {
            /* Make sure we have the correct characteristics */
            SectionHeaders[i].Characteristics |= IMAGE_SCN_CNT_INITIALIZED_DATA;
            SectionHeaders[i].Characteristics &= ~(IMAGE_SCN_MEM_PURGEABLE | IMAGE_SCN_MEM_DISCARDABLE);
        }
    }

    /* Get a pointer to the last section header */
    LastSection = &SectionHeaders[FileHeader->NumberOfSections - 1];

    /* Set the size of the last section to cover the rest of the PE */
    LastSection->SizeOfRawData = FileSize - LastSection->PointerToRawData;

    /* Check if the virtual section size is smaller than the raw data */
    if (LastSection->Misc.VirtualSize < LastSection->SizeOfRawData)
    {
        /* Make sure the virtual size of the section cover the raw data */
        LastSection->Misc.VirtualSize = FUNC1(LastSection->SizeOfRawData,
                                                 OptionalHeader->SectionAlignment);

        /* Fix up image size */
        OptionalHeader->SizeOfImage = LastSection->VirtualAddress +
                                      LastSection->Misc.VirtualSize;
    }

    /* Open the output file */
    out = FUNC5(path2, "wb");
    if (out == NULL)
    {
        FUNC11("Cannot open output file");
        FUNC7(FileData);
        FUNC3(1);
    }

    /* Write the output file */
    FUNC8(FileData, 1, FileSize, out);
    FUNC4(out);
    FUNC7(FileData);

    return 0;
}