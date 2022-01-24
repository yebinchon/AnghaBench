#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  dwPageSize; } ;
typedef  TYPE_1__ SYSTEM_INFO ;
typedef  char* PCHAR ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ ERROR_ALREADY_EXISTS ; 
 int /*<<< orphan*/  FILE_MAP_ALL_ACCESS ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  MEM_COMMIT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PAGE_READWRITE ; 
 int SEC_RESERVE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9()
{
   DWORD dwErr;
   SYSTEM_INFO si;
   HANDLE hMap;
   PBYTE pBufferStart;
   PCHAR pszFileName = "test.txt";
   ULONG dwMaxSize = FUNC8(pszFileName);

   FUNC2("Calling CreateFileMappingA\n");
   hMap = FUNC1(INVALID_HANDLE_VALUE, NULL,
      PAGE_READWRITE | SEC_RESERVE, 0, dwMaxSize, pszFileName);
   if (!hMap)
   {
      FUNC2("CreateFileMappingA failed\n");
      return 1;
   }

   dwErr = FUNC3();
   FUNC2("Calling MapViewOfFile\n");
   pBufferStart = (BYTE *)FUNC5(hMap, FILE_MAP_ALL_ACCESS, 0, 0, 0);
   if (!pBufferStart)
   {
      FUNC2("MapViewOfFile failed\n");
      return 1;
   }

   FUNC4(&si);

   if (dwErr == ERROR_ALREADY_EXISTS)
   {
      FUNC2("MapViewOfFile returned ERROR_ALREADY_EXISTS\n");
      FUNC2("This really shouldn't happen, but it's not fatal.\n");
      FUNC6(pBufferStart);
      FUNC0(hMap);
      return 1;
   }
   else
   {
      FUNC2("Calling VirtualAlloc\n");
      if (!FUNC7(pBufferStart, si.dwPageSize, MEM_COMMIT, PAGE_READWRITE))
      {
         FUNC2("VirtualAlloc failed\n");
         FUNC6(pBufferStart);
         FUNC0(hMap);
         return 1;
      }
   }

   FUNC2("Hurray!\n");

   FUNC6(pBufferStart);
   FUNC0(hMap);

   return 0;
}