
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int LPCTSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int ,int ,int ,int *,int ,int ,int ) ;
 int GENERIC_READ ;
 int GetFileAttributes (int ) ;
 int GetLastError () ;
 int INVALID_FILE_ATTRIBUTES ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int ReadFile (scalar_t__,char*,int,int*,int *) ;
 int exit (int) ;
 int fprintf (int ,char*,int,...) ;
 int stderr ;

__attribute__((used)) static void
CheckTestFile(LPCTSTR filename, DWORD attributes)
{
 HANDLE file;
 char buffer[4096];
 DWORD read;
 int c;
 DWORD diskattr;

 file = CreateFile(filename,
                   GENERIC_READ,
                   0,
                   ((void*)0),
                   OPEN_EXISTING,
                   0,
                   0);

 if (INVALID_HANDLE_VALUE == file) {
  fprintf(stderr, "CreateFile failed with code %lu\n", GetLastError());
  exit(1);
 }

 if (! ReadFile(file, buffer, sizeof(buffer), &read, ((void*)0))) {
  fprintf(stderr, "ReadFile failed with code %lu\n", GetLastError());
  exit(1);
 }
 if (read != sizeof(buffer)) {
  fprintf(stderr, "Trying to read %u bytes but got %lu bytes\n", sizeof(buffer), read);
  exit(1);
 }
 for(c = 0; c < sizeof(buffer); c++) {
  if (buffer[c] != (char) c) {
   fprintf(stderr, "File contents changed at position %u\n", c);
   exit(1);
  }
 }

 CloseHandle(file);

 diskattr = GetFileAttributes(filename);
 if (INVALID_FILE_ATTRIBUTES == diskattr) {
  fprintf(stderr, "GetFileAttributes failed with code %lu\n", GetLastError());
  exit(1);
 }
 if (diskattr != attributes) {
  fprintf(stderr, "Attribute mismatch, expected 0x%08lx found 0x%08lx\n", attributes, diskattr);
  exit(1);
 }
}
