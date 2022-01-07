
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int * PVOID ;
typedef scalar_t__ HANDLE ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int ,int,int ,int *,int ,int ,int ) ;
 scalar_t__ CreateFileMapping (scalar_t__,int *,int ,int ,int,int *) ;
 int FILE_MAP_ALL_ACCESS ;
 int FillMemory (int *,int,char) ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int * MapViewOfFile (scalar_t__,int ,int ,int ,int) ;
 int PAGE_READWRITE ;
 int UnmapViewOfFile (int *) ;
 int _T (char*) ;
 int printf (char*,...) ;
 int strcpy (int *,char*) ;

int main(int argc, char* argv[])
{
  HANDLE hFile;
  HANDLE Section;
  PVOID BaseAddress;

  printf("Section Test\n");

  hFile = CreateFile(_T("sectest.txt"),
       GENERIC_READ | GENERIC_WRITE,
       0,
       ((void*)0),
       CREATE_ALWAYS,
       0,
       0);
  if (hFile == INVALID_HANDLE_VALUE)
    {
      printf("Failed to create file (err=%ld)", GetLastError());
      return 1;
    }

  Section = CreateFileMapping(hFile,
         ((void*)0),
         PAGE_READWRITE,
         0,
         4096,
         ((void*)0));
  if (Section == ((void*)0))
    {
      printf("Failed to create section (err=%ld)", GetLastError());
      return 1;
    }

  printf("Mapping view of section\n");
  BaseAddress = MapViewOfFile(Section,
         FILE_MAP_ALL_ACCESS,
         0,
         0,
         4096);
  printf("BaseAddress %x\n", (UINT) BaseAddress);
  if (BaseAddress == ((void*)0))
    {
      printf("Failed to map section (%ld)\n", GetLastError());
      return 1;
    }

  printf("Clearing section\n");
  FillMemory(BaseAddress, 4096, ' ');
  printf("Copying test data to section\n");
  strcpy(BaseAddress, "test data");

  if (!UnmapViewOfFile(BaseAddress))
    {
      printf("Failed to unmap view of file (%ld)\n", GetLastError());
      return 1;
    }

  if (!CloseHandle(hFile))
    {
      printf("Failed to close file (%ld)\n", GetLastError());
      return 1;
    }

  return 0;
}
