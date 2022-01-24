#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_11__ {scalar_t__ e_magic; long e_lfanew; } ;
struct TYPE_10__ {int SizeOfOptionalHeader; } ;
struct TYPE_9__ {size_t ImageBase; } ;
struct TYPE_8__ {int PointerToRawData; } ;
typedef  TYPE_1__* PIMAGE_SECTION_HEADER ;
typedef  TYPE_2__* PIMAGE_OPTIONAL_HEADER ;
typedef  TYPE_3__* PIMAGE_FILE_HEADER ;
typedef  TYPE_4__* PIMAGE_DOS_HEADER ;

/* Variables and functions */
 scalar_t__ IMAGE_DOS_MAGIC ; 
 int FUNC0 (char*,size_t) ; 
 TYPE_1__* FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 size_t FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC6 ( const void* FileData, size_t offset )
{
	PIMAGE_DOS_HEADER PEDosHeader;
	PIMAGE_FILE_HEADER PEFileHeader;
	PIMAGE_OPTIONAL_HEADER PEOptHeader;
	PIMAGE_SECTION_HEADER PESectionHeaders;
	PIMAGE_SECTION_HEADER PERosSymSectionHeader;
	size_t ImageBase;
	int res;

	/* Check if MZ header exists  */
	PEDosHeader = (PIMAGE_DOS_HEADER)FileData;
	if (PEDosHeader->e_magic != IMAGE_DOS_MAGIC || PEDosHeader->e_lfanew == 0L)
	{
		FUNC4("Input file is not a PE image.\n");
		return 1;
	}

	/* Locate PE file header  */
	/* sizeof(ULONG) = sizeof(MAGIC) */
	PEFileHeader = (PIMAGE_FILE_HEADER)((char *)FileData + PEDosHeader->e_lfanew + sizeof(ULONG));

	/* Locate optional header */
	PEOptHeader = (PIMAGE_OPTIONAL_HEADER)(PEFileHeader + 1);
	ImageBase = PEOptHeader->ImageBase;

	/* Locate PE section headers  */
	PESectionHeaders = (PIMAGE_SECTION_HEADER)((char *) PEOptHeader + PEFileHeader->SizeOfOptionalHeader);

	/* make sure offset is what we want */
	offset = FUNC2 ( ImageBase, offset );

	/* find rossym section */
	PERosSymSectionHeader = FUNC1 (
		PEFileHeader, PESectionHeaders );
	if ( !PERosSymSectionHeader )
	{
		FUNC3 ( stderr, "Couldn't find rossym section in executable\n" );
		return 1;
	}
	res = FUNC0 ( (char*)FileData + PERosSymSectionHeader->PointerToRawData,
		offset );
	if ( res )
		FUNC5 ( "??:0\n" );
	return res;
}