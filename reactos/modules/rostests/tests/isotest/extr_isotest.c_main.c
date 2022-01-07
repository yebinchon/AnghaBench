
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int HighPart; int LowPart; } ;
struct TYPE_5__ {int QuadPart; TYPE_1__ u; } ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int CHAR ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int *,int ,int,int *,int ,int ,int *) ;
 scalar_t__ FALSE ;
 int FILE_BEGIN ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 scalar_t__ GetLastError () ;
 int HexDump (char*,int) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ NO_ERROR ;
 int OPEN_EXISTING ;
 scalar_t__ ReadBlock (scalar_t__,char*,TYPE_2__*,int,int *) ;
 scalar_t__ ReadFile (scalar_t__,char*,int,int *,int *) ;
 int SetFilePointer (scalar_t__,int ,int *,int ) ;
 int SetLastError (scalar_t__) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int memset (char*,int ,int) ;
 int printf (char*) ;
 int strcat (int *,char*) ;
 int strcpy (int *,char*) ;

int main (int argc, char *argv[])
{
  HANDLE hDisk;
  DWORD dwRead;
  char *Buffer;
  CHAR Filename[80];
  LARGE_INTEGER FilePosition;

  if (argc != 2)
    {
      printf("Usage: isotest [Drive:]\n");
      return 0;
    }

  strcpy(Filename, "\\\\.\\");
  strcat(Filename, argv[1]);

  hDisk = CreateFile(Filename,
       GENERIC_READ,
       FILE_SHARE_READ | FILE_SHARE_WRITE,
       ((void*)0),
       OPEN_EXISTING,
       0,
       ((void*)0));
  if (hDisk == INVALID_HANDLE_VALUE)
    {
      printf("CreateFile(): Invalid disk handle!\n");
      return 0;
    }

  Buffer = (char*)malloc(2048);
  if (Buffer == ((void*)0))
    {
      CloseHandle(hDisk);
      printf("Out of memory!\n");
      return 0;
    }
  memset(Buffer, 0, 2048);


  FilePosition.QuadPart = 16 * 2048;
  if (ReadBlock(hDisk,
  Buffer,
  &FilePosition,
  2048,
  &dwRead) == FALSE)
    {
      CloseHandle(hDisk);
      free(Buffer);



      return 0;
    }

  HexDump(Buffer, 128);

  CloseHandle(hDisk);

  free(Buffer);

  return 0;
}
