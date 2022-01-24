#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * alpxdtaSorted; } ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  TYPE_1__* LPXDTALINK ;
typedef  int /*<<< orphan*/  HLOCAL ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LMEM_FIXED ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_3__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 

LPXDTALINK
FUNC7(LPXDTALINK lpStart)
{
   LPXDTALINK lpStartCopy;
   LPXDTALINK lpPrev;
   LPXDTALINK lpLink;
   LPXDTALINK lpNext;
   DWORD dwSize;

#ifdef TESTING
// TESTING
   {TCHAR szT[100]; wsprintf(szT,
   L"MemClone %x ", lpStart); OutputDebugString(szT);}
#endif

   for (lpPrev = NULL, lpStartCopy = NULL; lpStart; lpStart = lpNext)
   {
      lpNext = lpStart->next;

      dwSize = FUNC2((HLOCAL)lpStart);

      lpLink = FUNC1(LMEM_FIXED, dwSize);
      if (!lpLink)
      {
         FUNC3(lpStartCopy);
         return NULL;
      }

      FUNC0((PBYTE)lpLink, (PBYTE)lpStart, dwSize);

      if (!lpStartCopy)
      {
         lpStartCopy = lpLink;

         //
         // MUST set lpxdtaDst->head.alpxdtaSorted to NULL,
         // otherwise it will attempt to use the original one's space
         //
         FUNC4(lpStartCopy)->alpxdtaSorted = NULL;
      }

      //
      // Setup link (must null out last one since we can free it at
      // any time if memory alloc fails).
      //
      lpLink->next = NULL;

      if (lpPrev)
      {
         lpPrev->next = lpLink;
      }
      lpPrev = lpLink;
   }

#ifdef TESTING
// TESTING
   {TCHAR szT[100]; wsprintf(szT,
   L"rets %x\n", lpStartCopy); OutputDebugString(szT);}
#endif

   return lpStartCopy;
}