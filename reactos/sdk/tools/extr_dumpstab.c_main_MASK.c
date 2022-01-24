#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_8__ {scalar_t__ e_magic; long e_lfanew; } ;
struct TYPE_7__ {int SizeOfOptionalHeader; } ;
struct TYPE_6__ {int /*<<< orphan*/  ImageBase; } ;
typedef  scalar_t__ PIMAGE_SECTION_HEADER ;
typedef  TYPE_1__* PIMAGE_OPTIONAL_HEADER ;
typedef  TYPE_2__* PIMAGE_FILE_HEADER ;
typedef  TYPE_3__* PIMAGE_DOS_HEADER ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ IMAGE_DOS_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (char*,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC9(int argc, char* argv[])
{
  PIMAGE_DOS_HEADER PEDosHeader;
  PIMAGE_FILE_HEADER PEFileHeader;
  PIMAGE_OPTIONAL_HEADER PEOptHeader;
  PIMAGE_SECTION_HEADER PESectionHeaders;
  ULONG ImageBase;
  void *StabBase;
  ULONG StabsLength;
  void *StabStringBase;
  ULONG StabStringsLength;
  char* path1;
  size_t FileSize;
  void *FileData;

  if (2 != argc)
    {
      FUNC5(stderr, "Usage: dumpstabs <exefile>\n");
      FUNC4(1);
    }

  path1 = FUNC3(argv[1]);

  FileData = FUNC7 ( path1, &FileSize );
  if ( !FileData )
  {
    FUNC5 ( stderr, "An error occured loading '%s'\n", path1 );
    FUNC4(1);
  }

  /* Check if MZ header exists  */
  PEDosHeader = (PIMAGE_DOS_HEADER) FileData;
  if (PEDosHeader->e_magic != IMAGE_DOS_MAGIC || PEDosHeader->e_lfanew == 0L)
    {
      FUNC8("Input file is not a PE image.\n");
      FUNC6(FileData);
      FUNC4(1);
    }

  /* Locate PE file header  */
  /* sizeof(ULONG) = sizeof(MAGIC) */
  PEFileHeader = (PIMAGE_FILE_HEADER)((char *) FileData + PEDosHeader->e_lfanew + sizeof(ULONG));

  /* Locate optional header */
  FUNC2(sizeof(ULONG) == 4);
  PEOptHeader = (PIMAGE_OPTIONAL_HEADER)(PEFileHeader + 1);
  ImageBase = PEOptHeader->ImageBase;

  /* Locate PE section headers  */
  PESectionHeaders = (PIMAGE_SECTION_HEADER)((char *) PEOptHeader + PEFileHeader->SizeOfOptionalHeader);

  if (FUNC0(FileData, PEFileHeader, PESectionHeaders, &StabsLength, &StabBase,
                  &StabStringsLength, &StabStringBase))
    {
      FUNC6(FileData);
      FUNC4(1);
    }

  FUNC1( StabsLength, StabBase, StabStringsLength, StabStringBase,
                ImageBase, PEFileHeader, PESectionHeaders);

  FUNC6(FileData);

  return 0;
}