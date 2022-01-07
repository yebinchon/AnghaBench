
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * alpxdtaSorted; } ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef int TCHAR ;
typedef int PBYTE ;
typedef TYPE_1__* LPXDTALINK ;
typedef int HLOCAL ;
typedef int DWORD ;


 int CopyMemory (int ,int ,int ) ;
 int LMEM_FIXED ;
 TYPE_1__* LocalAlloc (int ,int ) ;
 int LocalSize (int ) ;
 int MemDelete (TYPE_1__*) ;
 TYPE_3__* MemLinkToHead (TYPE_1__*) ;
 int OutputDebugString (int *) ;
 int wsprintf (int *,char*,TYPE_1__*) ;

LPXDTALINK
MemClone(LPXDTALINK lpStart)
{
   LPXDTALINK lpStartCopy;
   LPXDTALINK lpPrev;
   LPXDTALINK lpLink;
   LPXDTALINK lpNext;
   DWORD dwSize;







   for (lpPrev = ((void*)0), lpStartCopy = ((void*)0); lpStart; lpStart = lpNext)
   {
      lpNext = lpStart->next;

      dwSize = LocalSize((HLOCAL)lpStart);

      lpLink = LocalAlloc(LMEM_FIXED, dwSize);
      if (!lpLink)
      {
         MemDelete(lpStartCopy);
         return ((void*)0);
      }

      CopyMemory((PBYTE)lpLink, (PBYTE)lpStart, dwSize);

      if (!lpStartCopy)
      {
         lpStartCopy = lpLink;





         MemLinkToHead(lpStartCopy)->alpxdtaSorted = ((void*)0);
      }





      lpLink->next = ((void*)0);

      if (lpPrev)
      {
         lpPrev->next = lpLink;
      }
      lpPrev = lpLink;
   }







   return lpStartCopy;
}
