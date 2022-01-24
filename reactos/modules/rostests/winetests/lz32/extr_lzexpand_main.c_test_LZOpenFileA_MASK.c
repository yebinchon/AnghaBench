#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  test ;
struct TYPE_4__ {int cBytes; int /*<<< orphan*/  szPathName; int /*<<< orphan*/  nErrCode; } ;
typedef  TYPE_1__ OFSTRUCT ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ LZERROR_BADINHANDLE ; 
 scalar_t__ FUNC3 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OF_CREATE ; 
 int /*<<< orphan*/  OF_DELETE ; 
 int /*<<< orphan*/  OF_EXIST ; 
 int /*<<< orphan*/  OF_READ ; 
 int /*<<< orphan*/  OF_READWRITE ; 
 int /*<<< orphan*/  OF_WRITE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 char* filename_ ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(void)
{
  OFSTRUCT test;
  DWORD retval;
  INT file;
  static char badfilename_[] = "badfilename_";
  char expected[MAX_PATH];
  char short_expected[MAX_PATH];

  FUNC4(0xfaceabee);
  /* Check for nonexistent file. */
  file = FUNC3(badfilename_, &test, OF_READ);
  FUNC8(file == LZERROR_BADINHANDLE, 
     "LZOpenFileA succeeded on nonexistent file\n");
  FUNC8(FUNC1() == ERROR_FILE_NOT_FOUND, 
     "GetLastError() returns %d\n", FUNC1());
  FUNC2(file);

  FUNC7(&test, 0xA5, sizeof(test));
  FUNC5(filename_, expected, FALSE);

  /* Create an empty file. */
  file = FUNC3(filename_, &test, OF_CREATE);
  FUNC8(file >= 0, "LZOpenFileA failed on creation\n");
  FUNC8(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileA set test.cBytes to %d\n", test.cBytes);
  FUNC8(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileA set test.nErrCode to %d\n", test.nErrCode);
  FUNC8(FUNC6(test.szPathName, expected) == 0,
     "LZOpenFileA returned '%s', but was expected to return '%s'\n",
     test.szPathName, expected);
  FUNC2(file);

  retval = FUNC0(filename_);
  FUNC8(retval != INVALID_FILE_ATTRIBUTES, "GetFileAttributesA: error %d\n", 
     FUNC1());

  /* Check various opening options: */
  FUNC7(&test, 0xA5, sizeof(test));
  FUNC5(filename_, short_expected, TRUE);

  /* a, for reading. */
  file = FUNC3(filename_, &test, OF_READ);
  FUNC8(file >= 0, "LZOpenFileA failed on read\n");
  FUNC8(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileA set test.cBytes to %d '%s'('%s')\n", test.cBytes, expected, short_expected);
  FUNC8(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileA set test.nErrCode to %d\n", test.nErrCode);
  FUNC8(FUNC6(test.szPathName, expected) == 0,
     "LZOpenFileA returned '%s', but was expected to return '%s' or '%s'\n",
     test.szPathName, expected, short_expected);
  FUNC2(file);

  FUNC7(&test, 0xA5, sizeof(test));

  /* b, for writing. */
  file = FUNC3(filename_, &test, OF_WRITE);
  FUNC8(file >= 0, "LZOpenFileA failed on write\n");
  FUNC8(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileA set test.cBytes to %d\n", test.cBytes);
  FUNC8(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileA set test.nErrCode to %d\n", test.nErrCode);
  FUNC8(FUNC6(test.szPathName, expected) == 0,
     "LZOpenFileA returned '%s', but was expected to return '%s' or '%s'\n",
     test.szPathName, expected, short_expected);
  FUNC2(file);

  FUNC7(&test, 0xA5, sizeof(test));

  /* c, for reading and writing. */
  file = FUNC3(filename_, &test, OF_READWRITE);
  FUNC8(file >= 0, "LZOpenFileA failed on read/write\n");
  FUNC8(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileA set test.cBytes to %d\n", test.cBytes);
  FUNC8(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileA set test.nErrCode to %d\n", test.nErrCode);
  FUNC8(FUNC6(test.szPathName, expected) == 0,
     "LZOpenFileA returned '%s', but was expected to return '%s' or '%s'\n",
     test.szPathName, expected, short_expected);
  FUNC2(file);

  FUNC7(&test, 0xA5, sizeof(test));

  /* d, for checking file existence. */
  file = FUNC3(filename_, &test, OF_EXIST);
  FUNC8(file >= 0, "LZOpenFileA failed on read/write\n");
  FUNC8(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileA set test.cBytes to %d\n", test.cBytes);
  FUNC8(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileA set test.nErrCode to %d\n", test.nErrCode);
  FUNC8(FUNC6(test.szPathName, expected) == 0,
     "LZOpenFileA returned '%s', but was expected to return '%s' or '%s'\n",
     test.szPathName, expected, short_expected);
  FUNC2(file);

  FUNC7(&test, 0xA5, sizeof(test));

  /* Delete the file then make sure it doesn't exist anymore. */
  file = FUNC3(filename_, &test, OF_DELETE);
  FUNC8(file >= 0, "LZOpenFileA failed on delete\n");
  FUNC8(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileA set test.cBytes to %d\n", test.cBytes);
  FUNC8(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileA set test.nErrCode to %d\n", test.nErrCode);
  FUNC8(FUNC6(test.szPathName, expected) == 0,
     "LZOpenFileA returned '%s', but was expected to return '%s' or '%s'\n",
     test.szPathName, expected, short_expected);
  FUNC2(file);

  retval = FUNC0(filename_);
  FUNC8(retval == INVALID_FILE_ATTRIBUTES, 
     "GetFileAttributesA succeeded on deleted file\n");

  FUNC9();
  FUNC10();
}