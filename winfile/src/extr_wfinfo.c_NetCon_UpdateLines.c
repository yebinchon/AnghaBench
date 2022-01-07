
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {size_t* dwLines; scalar_t__* lpszRemoteNameMinusFour; } ;
typedef scalar_t__ LPTSTR ;
typedef size_t DWORD ;
typedef size_t DRIVE ;


 int CHAR_NEWLINE ;
 scalar_t__ DRIVE_INFO_NAME_HEADER ;
 scalar_t__ StrChr (scalar_t__,int ) ;
 TYPE_1__* aDriveInfo ;

VOID
NetCon_UpdateLines(DRIVE drive, DWORD dwType)
{
   LPTSTR lpNext;
   DWORD dwLines=0;





   lpNext = aDriveInfo[drive].lpszRemoteNameMinusFour[dwType] +
      DRIVE_INFO_NAME_HEADER;

   do
   {
      dwLines++;
      lpNext = StrChr(lpNext, CHAR_NEWLINE);
   } while (lpNext++);

   aDriveInfo[drive].dwLines[dwType] = dwLines;
}
