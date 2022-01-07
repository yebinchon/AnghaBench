
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OFSTRUCT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CREATE_NEW ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int ,int ,int ,int *,int ,int ,int ) ;
 int DeleteFileA (int ) ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LZClose (int) ;
 int LZCopy (int,int) ;
 int LZOpenFileA (int ,int *,int ) ;
 int OF_CREATE ;
 int OF_READ ;
 int OPEN_EXISTING ;
 int ReadFile (scalar_t__,int ,int,int*,int ) ;
 int WriteFile (scalar_t__,int ,int,int*,int ) ;
 int buf ;
 int compressed_file ;
 int compressed_file_size ;
 int filename2 ;
 int filename_ ;
 int memcmp (int ,int ,int) ;
 int ok (int,char*,...) ;
 int uncompressed_data ;
 int uncompressed_data_size ;

__attribute__((used)) static void test_LZCopy(void)
{
  HANDLE file;
  DWORD ret;
  int source, dest;
  OFSTRUCT stest, dtest;
  BOOL retok;


  file = CreateFileA(filename_, GENERIC_WRITE, 0, ((void*)0), CREATE_NEW, 0, 0);
  ok(file != INVALID_HANDLE_VALUE,
     "CreateFileA: error %d\n", GetLastError());
  retok = WriteFile(file, compressed_file, compressed_file_size, &ret, 0);
  ok( retok, "WriteFile error %d\n", GetLastError());
  ok(ret == compressed_file_size, "Wrote wrong number of bytes\n");
  CloseHandle(file);

  source = LZOpenFileA(filename_, &stest, OF_READ);
  ok(source >= 0, "LZOpenFileA failed on compressed file\n");
  dest = LZOpenFileA(filename2, &dtest, OF_CREATE);
  ok(dest >= 0, "LZOpenFileA failed on creating new file %d\n", dest);

  ret = LZCopy(source, dest);
  ok(ret > 0, "LZCopy error\n");

  LZClose(source);
  LZClose(dest);

  file = CreateFileA(filename2, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, 0, 0);
  ok(file != INVALID_HANDLE_VALUE,
     "CreateFileA: error %d\n", GetLastError());

  retok = ReadFile(file, buf, uncompressed_data_size*2, &ret, 0);
  ok( retok && ret == uncompressed_data_size, "ReadFile: error %d\n", GetLastError());

  ok(!memcmp(buf, uncompressed_data, uncompressed_data_size),
     "buffer contents mismatch\n");
  CloseHandle(file);

  ret = DeleteFileA(filename_);
  ok(ret, "DeleteFileA: error %d\n", GetLastError());
  ret = DeleteFileA(filename2);
  ok(ret, "DeleteFileA: error %d\n", GetLastError());
}
