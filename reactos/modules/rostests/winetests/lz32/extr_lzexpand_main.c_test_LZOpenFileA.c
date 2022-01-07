
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int test ;
struct TYPE_4__ {int cBytes; int szPathName; int nErrCode; } ;
typedef TYPE_1__ OFSTRUCT ;
typedef scalar_t__ INT ;
typedef scalar_t__ DWORD ;


 int ERROR_FILE_NOT_FOUND ;
 int ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ GetFileAttributesA (char*) ;
 int GetLastError () ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int LZClose (scalar_t__) ;
 scalar_t__ LZERROR_BADINHANDLE ;
 scalar_t__ LZOpenFileA (char*,TYPE_1__*,int ) ;
 int MAX_PATH ;
 int OF_CREATE ;
 int OF_DELETE ;
 int OF_EXIST ;
 int OF_READ ;
 int OF_READWRITE ;
 int OF_WRITE ;
 int SetLastError (int) ;
 int TRUE ;
 char* filename_ ;
 int full_file_path_name_in_a_CWD (char*,char*,int ) ;
 scalar_t__ lstrcmpA (int ,char*) ;
 int memset (TYPE_1__*,int,int) ;
 int ok (int,char*,...) ;
 int test_LZOpenFileA_existing_compressed () ;
 int test_LZOpenFileA_nonexisting_compressed () ;

__attribute__((used)) static void test_LZOpenFileA(void)
{
  OFSTRUCT test;
  DWORD retval;
  INT file;
  static char badfilename_[] = "badfilename_";
  char expected[MAX_PATH];
  char short_expected[MAX_PATH];

  SetLastError(0xfaceabee);

  file = LZOpenFileA(badfilename_, &test, OF_READ);
  ok(file == LZERROR_BADINHANDLE,
     "LZOpenFileA succeeded on nonexistent file\n");
  ok(GetLastError() == ERROR_FILE_NOT_FOUND,
     "GetLastError() returns %d\n", GetLastError());
  LZClose(file);

  memset(&test, 0xA5, sizeof(test));
  full_file_path_name_in_a_CWD(filename_, expected, FALSE);


  file = LZOpenFileA(filename_, &test, OF_CREATE);
  ok(file >= 0, "LZOpenFileA failed on creation\n");
  ok(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileA set test.cBytes to %d\n", test.cBytes);
  ok(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileA set test.nErrCode to %d\n", test.nErrCode);
  ok(lstrcmpA(test.szPathName, expected) == 0,
     "LZOpenFileA returned '%s', but was expected to return '%s'\n",
     test.szPathName, expected);
  LZClose(file);

  retval = GetFileAttributesA(filename_);
  ok(retval != INVALID_FILE_ATTRIBUTES, "GetFileAttributesA: error %d\n",
     GetLastError());


  memset(&test, 0xA5, sizeof(test));
  full_file_path_name_in_a_CWD(filename_, short_expected, TRUE);


  file = LZOpenFileA(filename_, &test, OF_READ);
  ok(file >= 0, "LZOpenFileA failed on read\n");
  ok(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileA set test.cBytes to %d '%s'('%s')\n", test.cBytes, expected, short_expected);
  ok(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileA set test.nErrCode to %d\n", test.nErrCode);
  ok(lstrcmpA(test.szPathName, expected) == 0,
     "LZOpenFileA returned '%s', but was expected to return '%s' or '%s'\n",
     test.szPathName, expected, short_expected);
  LZClose(file);

  memset(&test, 0xA5, sizeof(test));


  file = LZOpenFileA(filename_, &test, OF_WRITE);
  ok(file >= 0, "LZOpenFileA failed on write\n");
  ok(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileA set test.cBytes to %d\n", test.cBytes);
  ok(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileA set test.nErrCode to %d\n", test.nErrCode);
  ok(lstrcmpA(test.szPathName, expected) == 0,
     "LZOpenFileA returned '%s', but was expected to return '%s' or '%s'\n",
     test.szPathName, expected, short_expected);
  LZClose(file);

  memset(&test, 0xA5, sizeof(test));


  file = LZOpenFileA(filename_, &test, OF_READWRITE);
  ok(file >= 0, "LZOpenFileA failed on read/write\n");
  ok(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileA set test.cBytes to %d\n", test.cBytes);
  ok(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileA set test.nErrCode to %d\n", test.nErrCode);
  ok(lstrcmpA(test.szPathName, expected) == 0,
     "LZOpenFileA returned '%s', but was expected to return '%s' or '%s'\n",
     test.szPathName, expected, short_expected);
  LZClose(file);

  memset(&test, 0xA5, sizeof(test));


  file = LZOpenFileA(filename_, &test, OF_EXIST);
  ok(file >= 0, "LZOpenFileA failed on read/write\n");
  ok(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileA set test.cBytes to %d\n", test.cBytes);
  ok(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileA set test.nErrCode to %d\n", test.nErrCode);
  ok(lstrcmpA(test.szPathName, expected) == 0,
     "LZOpenFileA returned '%s', but was expected to return '%s' or '%s'\n",
     test.szPathName, expected, short_expected);
  LZClose(file);

  memset(&test, 0xA5, sizeof(test));


  file = LZOpenFileA(filename_, &test, OF_DELETE);
  ok(file >= 0, "LZOpenFileA failed on delete\n");
  ok(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileA set test.cBytes to %d\n", test.cBytes);
  ok(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileA set test.nErrCode to %d\n", test.nErrCode);
  ok(lstrcmpA(test.szPathName, expected) == 0,
     "LZOpenFileA returned '%s', but was expected to return '%s' or '%s'\n",
     test.szPathName, expected, short_expected);
  LZClose(file);

  retval = GetFileAttributesA(filename_);
  ok(retval == INVALID_FILE_ATTRIBUTES,
     "GetFileAttributesA succeeded on deleted file\n");

  test_LZOpenFileA_existing_compressed();
  test_LZOpenFileA_nonexisting_compressed();
}
