
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int LPCTSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int ,int,int ,int *,int ,int ,int ) ;
 int DeleteTestFile (int ) ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int SetFileAttributes (int ,int ) ;
 int WriteFile (scalar_t__,char*,int,int *,int *) ;
 int exit (int) ;
 int fprintf (int ,char*,int ) ;
 int stderr ;

__attribute__((used)) static void
CreateTestFile(LPCTSTR filename, DWORD attributes)
{
 HANDLE file;
 char buffer[4096];
 DWORD wrote;
 int c;

 DeleteTestFile(filename);
 file = CreateFile(filename,
                   GENERIC_READ | GENERIC_WRITE,
                   0,
                   ((void*)0),
                   CREATE_ALWAYS,
                   0,
                   0);

 if (INVALID_HANDLE_VALUE == file) {
  fprintf(stderr, "CreateFile failed with code %lu\n", GetLastError());
  exit(1);
 }
 for(c = 0; c < sizeof(buffer); c++) {
  buffer[c] = (char) c;
 }
 if (! WriteFile(file, buffer, sizeof(buffer), &wrote, ((void*)0))) {
  fprintf(stderr, "WriteFile failed with code %lu\n", GetLastError());
  exit(1);
 }
 CloseHandle(file);

 if (! SetFileAttributes(filename, attributes)) {
  fprintf(stderr, "SetFileAttributes failed with code %lu\n", GetLastError());
  exit(1);
 }
}
