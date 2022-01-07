
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ LowPart; scalar_t__ HighPart; } ;
struct TYPE_10__ {scalar_t__ fdwStatus; int * alpxdtaSorted; TYPE_1__ qTotalSize; scalar_t__ dwTotalCount; scalar_t__ dwEntries; } ;
struct TYPE_9__ {int dwNextFree; int dwSize; int * next; } ;
typedef int TCHAR ;
typedef TYPE_2__* LPXDTALINK ;
typedef TYPE_3__* LPXDTAHEAD ;


 int BLOCK_SIZE_GRANULARITY ;
 int LINKHEADSIZE ;
 int LMEM_FIXED ;
 scalar_t__ LocalAlloc (int ,int ) ;
 TYPE_3__* MemLinkToHead (TYPE_2__*) ;
 int OutputDebugString (int *) ;
 int wsprintf (int *,char*,TYPE_2__*) ;

LPXDTALINK
MemNew()
{
   LPXDTALINK lpStart;
   LPXDTAHEAD lpHead;

   lpStart = (LPXDTALINK) LocalAlloc(LMEM_FIXED, BLOCK_SIZE_GRANULARITY);

   if (!lpStart)
      return ((void*)0);




   lpStart->next = ((void*)0);



   lpStart->dwNextFree = LINKHEADSIZE;




   lpHead = MemLinkToHead(lpStart);




   lpHead->dwEntries = 0;
   lpHead->dwTotalCount = 0;
   lpHead->qTotalSize.HighPart = 0;
   lpHead->qTotalSize.LowPart = 0;
   lpHead->alpxdtaSorted = ((void*)0);
   lpHead->fdwStatus = 0;
   return lpStart;
}
