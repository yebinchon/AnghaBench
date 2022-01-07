
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buff ;
struct TYPE_4__ {char* cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef int INT ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int BUFF_SIZE ;
 int CloseHandle (scalar_t__) ;
 int ConErrPrintf (char*,char*) ;
 int ConOutPuts (int ) ;
 scalar_t__ CreateFile (char*,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFile (char*,TYPE_1__*) ;
 scalar_t__ FindNextFile (scalar_t__,TYPE_1__*) ;
 int GENERIC_READ ;
 scalar_t__ GetStdHandle (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 scalar_t__ ReadFile (scalar_t__,char*,int,scalar_t__*,int *) ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int Sleep (int ) ;
 int WriteFile (scalar_t__,char*,scalar_t__,scalar_t__*,int *) ;
 int _T (char*) ;
 scalar_t__ _tcsncmp (char*,int ,int) ;

int main (int argc, char **argv)
{
 INT i;
 HANDLE hFind;
 HANDLE hConsoleIn, hConsoleOut, hFile;
 char buff[BUFF_SIZE];
 DWORD dwRead,dwWritten;
 BOOL bRet;
 WIN32_FIND_DATA FindData;

 hConsoleIn = GetStdHandle(STD_INPUT_HANDLE);
 hConsoleOut = GetStdHandle(STD_OUTPUT_HANDLE);

 if (argc == 2 && _tcsncmp (argv[1], _T("/?"), 2) == 0)
 {
  ConOutPuts(_T("copy stdin to stdout and then files to stdout\n"
                "\n"
                "Y [files]\n"
                "\n"
                "files         files to copy to stdout"));
  return 0;
 }


 do
 {
  bRet = ReadFile(hConsoleIn,buff,sizeof(buff),&dwRead,((void*)0));

  if (dwRead>0 && bRet)
   WriteFile(hConsoleOut,buff,dwRead,&dwWritten,((void*)0));

 } while(dwRead>0 && bRet);



 Sleep(0);

 for (i = 1; i < argc; i++)
 {
  hFind=FindFirstFile(argv[i],&FindData);

  if (hFind==INVALID_HANDLE_VALUE)
  {
   ConErrPrintf("File not found - %s\n",argv[i]);
   continue;
  }

  do
  {
   hFile = CreateFile(FindData.cFileName,
    GENERIC_READ,
    FILE_SHARE_READ,((void*)0),
    OPEN_EXISTING,
    FILE_ATTRIBUTE_NORMAL,((void*)0));

   if(hFile == INVALID_HANDLE_VALUE)
   {
    ConErrPrintf("File not found - %s\n",FindData.cFileName);
    continue;
   }

   do
   {
    bRet = ReadFile(hFile,buff,sizeof(buff),&dwRead,((void*)0));

    if (dwRead>0 && bRet)
     WriteFile(hConsoleOut,buff,dwRead,&dwWritten,((void*)0));

   } while(dwRead>0 && bRet);

   CloseHandle(hFile);

  }
  while(FindNextFile(hFind,&FindData));

  FindClose(hFind);
 }

 return 0;
}
