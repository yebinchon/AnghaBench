
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {scalar_t__ hThread; } ;
typedef int LPWSTR ;
typedef int INT ;
typedef int HWND ;


 int IDS_SEARCHING ;
 int IDS_SEARCHMSG ;
 scalar_t__ MAKEINTRESOURCE (int ) ;
 int SST_FORMAT ;
 int SST_RESOURCE ;
 TYPE_1__ SearchInfo ;
 int SetStatusText (int,int,int ,...) ;
 int szNULL ;

VOID
UpdateSearchStatus(HWND hwndLB, INT nCount)
{
   SetStatusText(0, SST_FORMAT|SST_RESOURCE, (LPWSTR) MAKEINTRESOURCE(IDS_SEARCHMSG), nCount);

   if (SearchInfo.hThread)
      SetStatusText(1, SST_RESOURCE, (LPWSTR) MAKEINTRESOURCE(IDS_SEARCHING));
   else
      SetStatusText(1, 0, szNULL);
}
