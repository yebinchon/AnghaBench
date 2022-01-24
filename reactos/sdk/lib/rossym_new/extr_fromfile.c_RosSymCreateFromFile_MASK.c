#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  scalar_t__ ULONG ;
struct TYPE_23__ {int MaximumLength; TYPE_4__* Buffer; void* Length; } ;
struct TYPE_20__ {unsigned int PointerToSymbolTable; unsigned int NumberOfSymbols; int NumberOfSections; } ;
struct TYPE_19__ {int /*<<< orphan*/  BaseOfData; int /*<<< orphan*/  BaseOfCode; int /*<<< orphan*/  SizeOfImage; int /*<<< orphan*/  ImageBase; } ;
struct TYPE_22__ {char* Name; TYPE_2__ FileHeader; TYPE_1__ OptionalHeader; scalar_t__ e_lfanew; } ;
struct TYPE_21__ {unsigned int nsections; int /*<<< orphan*/  loadsection; int /*<<< orphan*/  datastart; int /*<<< orphan*/  codestart; int /*<<< orphan*/  imagesize; int /*<<< orphan*/  loadbase; int /*<<< orphan*/  imagebase; TYPE_4__* sect; int /*<<< orphan*/  e8; int /*<<< orphan*/  e4; int /*<<< orphan*/  e2; int /*<<< orphan*/  fd; } ;
typedef  TYPE_3__ Pe ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PROSSYM_INFO ;
typedef  TYPE_4__* PIMAGE_SECTION_HEADER ;
typedef  scalar_t__ PCSZ ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IMAGE_SECTION_HEADER ;
typedef  TYPE_4__ IMAGE_NT_HEADERS ;
typedef  TYPE_4__ IMAGE_DOS_HEADER ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  TYPE_7__ ANSI_STRING ;

/* Variables and functions */
 TYPE_7__* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 void* FUNC2 (TYPE_4__*,int) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int IMAGE_SIZEOF_SHORT_NAME ; 
 int MAXIMUM_DWARF_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  RosSymStatus ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 unsigned int SYMBOL_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  loaddisksection ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  peget2 ; 
 int /*<<< orphan*/  peget4 ; 
 int /*<<< orphan*/  peget8 ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 

BOOLEAN
FUNC18(PVOID FileContext, PROSSYM_INFO *RosSymInfo)
{
    IMAGE_DOS_HEADER DosHeader;
    IMAGE_NT_HEADERS NtHeaders;
    PIMAGE_SECTION_HEADER SectionHeaders;
    unsigned SectionIndex;
    unsigned SymbolTable, NumSymbols;

    /* Load DOS header */
    if (! FUNC10(FileContext, 0))
    {
        FUNC17("Could not rewind file\n");
        return FALSE;
    }
    if (! FUNC9(FileContext, &DosHeader, sizeof(IMAGE_DOS_HEADER)))
    {
        FUNC17("Failed to read DOS header %x\n", RosSymStatus);
        return FALSE;
    }
    if (! FUNC5(&DosHeader))
    {
        FUNC17("Image doesn't have a valid DOS header\n");
        return FALSE;
    }

    /* Load NT headers */
    if (! FUNC10(FileContext, DosHeader.e_lfanew))
    {
        FUNC17("Failed seeking to NT headers\n");
        return FALSE;
    }
    if (! FUNC9(FileContext, &NtHeaders, sizeof(IMAGE_NT_HEADERS)))
    {
        FUNC17("Failed to read NT headers\n");
        return FALSE;
    }
    if (! FUNC6(&NtHeaders))
    {
        FUNC17("Image doesn't have a valid PE header\n");
        return FALSE;
    }

    SymbolTable = NtHeaders.FileHeader.PointerToSymbolTable;
    NumSymbols = NtHeaders.FileHeader.NumberOfSymbols;

    if (!NumSymbols)
    {
        FUNC17("Image doesn't have debug symbols\n");
        return FALSE;
    }

    FUNC1("SymbolTable %x NumSymbols %x\n", SymbolTable, NumSymbols);

    /* Load section headers */
    if (! FUNC10(FileContext, (char *) FUNC3(&NtHeaders) -
                         (char *) &NtHeaders + DosHeader.e_lfanew))
    {
        FUNC17("Failed seeking to section headers\n");
        return FALSE;
    }
    FUNC1("Alloc section headers\n");
    SectionHeaders = FUNC7(NtHeaders.FileHeader.NumberOfSections
                                    * sizeof(IMAGE_SECTION_HEADER));
    if (NULL == SectionHeaders)
    {
        FUNC17("Failed to allocate memory for %u section headers\n",
                NtHeaders.FileHeader.NumberOfSections);
        return FALSE;
    }
    if (! FUNC9(FileContext, SectionHeaders,
                         NtHeaders.FileHeader.NumberOfSections
                         * sizeof(IMAGE_SECTION_HEADER)))
    {
        FUNC8(SectionHeaders);
        FUNC17("Failed to read section headers\n");
        return FALSE;
    }

    // Convert names to ANSI_STRINGs
    for (SectionIndex = 0; SectionIndex < NtHeaders.FileHeader.NumberOfSections;
         SectionIndex++) 
    {
        ANSI_STRING astr;
        if (SectionHeaders[SectionIndex].Name[0] != '/') {
            FUNC1("Short name string %d, %s\n", SectionIndex, SectionHeaders[SectionIndex].Name);
            astr.Buffer = FUNC7(IMAGE_SIZEOF_SHORT_NAME);
            FUNC16(astr.Buffer, SectionHeaders[SectionIndex].Name, IMAGE_SIZEOF_SHORT_NAME);
            astr.MaximumLength = IMAGE_SIZEOF_SHORT_NAME;
            astr.Length = FUNC2(astr.Buffer, IMAGE_SIZEOF_SHORT_NAME);
        } else {
            UNICODE_STRING intConv;
            NTSTATUS Status;
            ULONG StringOffset;

            if (!FUNC11(&intConv, (PCSZ)SectionHeaders[SectionIndex].Name + 1))
                goto freeall;
            Status = FUNC14(&intConv, 10, &StringOffset);
            FUNC13(&intConv);
            if (!FUNC4(Status)) goto freeall;
            if (!FUNC10(FileContext, SymbolTable + NumSymbols * SYMBOL_SIZE + StringOffset))
                goto freeall;
            astr.Buffer = FUNC7(MAXIMUM_DWARF_NAME_SIZE);
            if (!FUNC9(FileContext, astr.Buffer, MAXIMUM_DWARF_NAME_SIZE))
                goto freeall;
            astr.Length = FUNC2(astr.Buffer, MAXIMUM_DWARF_NAME_SIZE);
            astr.MaximumLength = MAXIMUM_DWARF_NAME_SIZE;		  
            FUNC1("Long name %d, %s\n", SectionIndex, astr.Buffer);
        }
        *FUNC0(&SectionHeaders[SectionIndex]) = astr;
    }

    FUNC1("Done with sections\n");
    Pe *pe = FUNC7(sizeof(*pe));
    pe->fd = FileContext;
    pe->e2 = peget2;
    pe->e4 = peget4;
    pe->e8 = peget8;
    pe->nsections = NtHeaders.FileHeader.NumberOfSections;
    pe->sect = SectionHeaders;
    pe->imagebase = pe->loadbase = NtHeaders.OptionalHeader.ImageBase;
    pe->imagesize = NtHeaders.OptionalHeader.SizeOfImage;
    pe->codestart = NtHeaders.OptionalHeader.BaseOfCode;
    pe->datastart = NtHeaders.OptionalHeader.BaseOfData;
    pe->loadsection = loaddisksection;
    *RosSymInfo = FUNC15(pe);

    return TRUE;

freeall:
    for (SectionIndex = 0; SectionIndex < NtHeaders.FileHeader.NumberOfSections;
         SectionIndex++)
        FUNC12(FUNC0(&SectionHeaders[SectionIndex]));
    FUNC8(SectionHeaders);

    return FALSE;
}