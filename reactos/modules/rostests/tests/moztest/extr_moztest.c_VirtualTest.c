
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int dwPageSize; } ;
typedef TYPE_1__ SYSTEM_INFO ;
typedef char* PCHAR ;
typedef int * PBYTE ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int CloseHandle (int ) ;
 int CreateFileMappingA (int ,int *,int,int ,int ,char*) ;
 int DBG (char*) ;
 scalar_t__ ERROR_ALREADY_EXISTS ;
 int FILE_MAP_ALL_ACCESS ;
 scalar_t__ GetLastError () ;
 int GetSystemInfo (TYPE_1__*) ;
 int INVALID_HANDLE_VALUE ;
 int MEM_COMMIT ;
 scalar_t__ MapViewOfFile (int ,int ,int ,int ,int ) ;
 int PAGE_READWRITE ;
 int SEC_RESERVE ;
 int UnmapViewOfFile (int *) ;
 int VirtualAlloc (int *,int ,int ,int) ;
 int strlen (char*) ;

int VirtualTest()
{
   DWORD dwErr;
   SYSTEM_INFO si;
   HANDLE hMap;
   PBYTE pBufferStart;
   PCHAR pszFileName = "test.txt";
   ULONG dwMaxSize = strlen(pszFileName);

   DBG("Calling CreateFileMappingA\n");
   hMap = CreateFileMappingA(INVALID_HANDLE_VALUE, ((void*)0),
      PAGE_READWRITE | SEC_RESERVE, 0, dwMaxSize, pszFileName);
   if (!hMap)
   {
      DBG("CreateFileMappingA failed\n");
      return 1;
   }

   dwErr = GetLastError();
   DBG("Calling MapViewOfFile\n");
   pBufferStart = (BYTE *)MapViewOfFile(hMap, FILE_MAP_ALL_ACCESS, 0, 0, 0);
   if (!pBufferStart)
   {
      DBG("MapViewOfFile failed\n");
      return 1;
   }

   GetSystemInfo(&si);

   if (dwErr == ERROR_ALREADY_EXISTS)
   {
      DBG("MapViewOfFile returned ERROR_ALREADY_EXISTS\n");
      DBG("This really shouldn't happen, but it's not fatal.\n");
      UnmapViewOfFile(pBufferStart);
      CloseHandle(hMap);
      return 1;
   }
   else
   {
      DBG("Calling VirtualAlloc\n");
      if (!VirtualAlloc(pBufferStart, si.dwPageSize, MEM_COMMIT, PAGE_READWRITE))
      {
         DBG("VirtualAlloc failed\n");
         UnmapViewOfFile(pBufferStart);
         CloseHandle(hMap);
         return 1;
      }
   }

   DBG("Hurray!\n");

   UnmapViewOfFile(pBufferStart);
   CloseHandle(hMap);

   return 0;
}
