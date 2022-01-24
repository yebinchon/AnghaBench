#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_MAP_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char) ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int FUNC4 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

int FUNC10(int argc, char* argv[])
{
  HANDLE hFile;
  HANDLE Section;
  PVOID BaseAddress;

  FUNC8("Section Test\n");

  hFile = FUNC1(FUNC7("sectest.txt"),
		     GENERIC_READ | GENERIC_WRITE,
		     0,
		     NULL,
		     CREATE_ALWAYS,
		     0,
		     0);
  if (hFile == INVALID_HANDLE_VALUE)
    {
      FUNC8("Failed to create file (err=%ld)", FUNC4());
      return 1;
    }

  Section = FUNC2(hFile,
			      NULL,
			      PAGE_READWRITE,
			      0,
			      4096,
			      NULL);
  if (Section == NULL)
    {
      FUNC8("Failed to create section (err=%ld)", FUNC4());
      return 1;
    }

  FUNC8("Mapping view of section\n");
  BaseAddress = FUNC5(Section,
			      FILE_MAP_ALL_ACCESS,
			      0,
			      0,
			      4096);
  FUNC8("BaseAddress %x\n", (UINT) BaseAddress);
  if (BaseAddress == NULL)
    {
      FUNC8("Failed to map section (%ld)\n", FUNC4());
      return 1;
    }

  FUNC8("Clearing section\n");
  FUNC3(BaseAddress, 4096, ' ');
  FUNC8("Copying test data to section\n");
  FUNC9(BaseAddress, "test data");

  if (!FUNC6(BaseAddress))
    {
      FUNC8("Failed to unmap view of file (%ld)\n", FUNC4());
      return 1;
    }

  if (!FUNC0(hFile))
    {
      FUNC8("Failed to close file (%ld)\n", FUNC4());
      return 1;
    }

  return 0;
}