
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int XDTALINK ;
struct TYPE_7__ {scalar_t__ dwSize; } ;
struct TYPE_6__ {struct TYPE_6__* next; scalar_t__ dwNextFree; } ;
typedef scalar_t__ PBYTE ;
typedef TYPE_1__* LPXDTALINK ;
typedef TYPE_2__* LPXDTA ;
typedef scalar_t__ INT ;



LPXDTA
MemNext(register LPXDTALINK* plpLink, register LPXDTA lpxdta)
{
   register LPXDTALINK lpLinkCur = *plpLink;

   if ((PBYTE)lpxdta + lpxdta->dwSize - (PBYTE)lpLinkCur == (INT)lpLinkCur->dwNextFree)
   {
      *plpLink = lpLinkCur->next;
      return (LPXDTA)(((PBYTE)*plpLink)+sizeof(XDTALINK));
   }
   else
   {
      return (LPXDTA)((PBYTE)lpxdta + lpxdta->dwSize);
   }
}
