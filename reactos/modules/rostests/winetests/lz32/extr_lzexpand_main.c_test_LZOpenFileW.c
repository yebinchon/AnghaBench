
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int test ;
typedef char WCHAR ;
struct TYPE_4__ {int cBytes; int szPathName; int nErrCode; } ;
typedef TYPE_1__ OFSTRUCT ;
typedef scalar_t__ INT ;
typedef scalar_t__ DWORD ;


 int ERROR_CALL_NOT_IMPLEMENTED ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ GetFileAttributesW (char*) ;
 int GetLastError () ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int LZClose (scalar_t__) ;
 scalar_t__ LZERROR_BADINHANDLE ;
 scalar_t__ LZOpenFileW (char*,TYPE_1__*,int ) ;
 int MAX_PATH ;
 int OF_CREATE ;
 int OF_DELETE ;
 int OF_EXIST ;
 int OF_READ ;
 int OF_READWRITE ;
 int OF_WRITE ;
 int SetLastError (int) ;
 char* filenameW_ ;
 int filename_ ;
 int full_file_path_name_in_a_CWD (int ,char*,int ) ;
 scalar_t__ lstrcmpA (int ,char*) ;
 int memset (TYPE_1__*,int,int) ;
 int ok (int,char*,...) ;
 int test_LZOpenFileW_existing_compressed () ;
 int test_LZOpenFileW_nonexisting_compressed () ;
 int win_skip (char*) ;

__attribute__((used)) static void test_LZOpenFileW(void)
{
  OFSTRUCT test;
  DWORD retval;
  INT file;
  static WCHAR badfilenameW[] = {'b','a','d','f','i','l','e','n','a','m','e','.','x','t','n',0};
  char expected[MAX_PATH];

  SetLastError(0xfaceabee);

  file = LZOpenFileW(badfilenameW, &test, OF_READ);
  if(GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
  {
    win_skip("LZOpenFileW call is not implemented\n");
    return;
  }
  ok(GetLastError() == ERROR_FILE_NOT_FOUND,
     "GetLastError() returns %d\n", GetLastError());
  ok(file == LZERROR_BADINHANDLE, "LZOpenFileW succeeded on nonexistent file\n");
  LZClose(file);

  memset(&test, 0xA5, sizeof(test));
  full_file_path_name_in_a_CWD(filename_, expected, FALSE);


  file = LZOpenFileW(filenameW_, &test, OF_CREATE);
  ok(file >= 0, "LZOpenFile failed on creation\n");
  ok(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileW set test.cBytes to %d\n", test.cBytes);
  ok(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileW set test.nErrCode to %d\n", test.nErrCode);
  ok(lstrcmpA(test.szPathName, expected) == 0,
     "LZOpenFileW returned '%s', but was expected to return '%s'\n",
     test.szPathName, expected);
  LZClose(file);

  retval = GetFileAttributesW(filenameW_);
  ok(retval != INVALID_FILE_ATTRIBUTES, "GetFileAttributes: error %d\n",
    GetLastError());


  memset(&test, 0xA5, sizeof(test));


  file = LZOpenFileW(filenameW_, &test, OF_READ);
  ok(file >= 0, "LZOpenFileW failed on read\n");
  ok(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileW set test.cBytes to %d\n", test.cBytes);
  ok(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileW set test.nErrCode to %d\n", test.nErrCode);
  ok(lstrcmpA(test.szPathName, expected) == 0,
     "LZOpenFileW returned '%s', but was expected to return '%s'\n",
     test.szPathName, expected);
  LZClose(file);

  memset(&test, 0xA5, sizeof(test));


  file = LZOpenFileW(filenameW_, &test, OF_WRITE);
  ok(file >= 0, "LZOpenFileW failed on write\n");
  ok(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileW set test.cBytes to %d\n", test.cBytes);
  ok(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileW set test.nErrCode to %d\n", test.nErrCode);
  ok(lstrcmpA(test.szPathName, expected) == 0,
     "LZOpenFileW returned '%s', but was expected to return '%s'\n",
     test.szPathName, expected);
  LZClose(file);

  memset(&test, 0xA5, sizeof(test));


  file = LZOpenFileW(filenameW_, &test, OF_READWRITE);
  ok(file >= 0, "LZOpenFileW failed on read/write\n");
  ok(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileW set test.cBytes to %d\n", test.cBytes);
  ok(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileW set test.nErrCode to %d\n", test.nErrCode);
  ok(lstrcmpA(test.szPathName, expected) == 0,
     "LZOpenFileW returned '%s', but was expected to return '%s'\n",
     test.szPathName, expected);
  LZClose(file);

  memset(&test, 0xA5, sizeof(test));


  file = LZOpenFileW(filenameW_, &test, OF_EXIST);
  ok(file >= 0, "LZOpenFileW failed on read/write\n");
  ok(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileW set test.cBytes to %d\n", test.cBytes);
  ok(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileW set test.nErrCode to %d\n", test.nErrCode);
  ok(lstrcmpA(test.szPathName, expected) == 0,
     "LZOpenFileW returned '%s', but was expected to return '%s'\n",
     test.szPathName, expected);
  LZClose(file);

  memset(&test, 0xA5, sizeof(test));


  file = LZOpenFileW(filenameW_, &test, OF_DELETE);
  ok(file >= 0, "LZOpenFileW failed on delete\n");
  ok(test.cBytes == sizeof(OFSTRUCT),
     "LZOpenFileW set test.cBytes to %d\n", test.cBytes);
  ok(test.nErrCode == ERROR_SUCCESS,
     "LZOpenFileW set test.nErrCode to %d\n", test.nErrCode);
  ok(lstrcmpA(test.szPathName, expected) == 0,
     "LZOpenFileW returned '%s', but was expected to return '%s'\n",
     test.szPathName, expected);
  LZClose(file);

  retval = GetFileAttributesW(filenameW_);
  ok(retval == INVALID_FILE_ATTRIBUTES,
     "GetFileAttributesW succeeded on deleted file\n");

  test_LZOpenFileW_existing_compressed();
  test_LZOpenFileW_nonexisting_compressed();
}
