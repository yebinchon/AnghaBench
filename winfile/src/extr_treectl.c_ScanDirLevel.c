
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {int dwFileAttributes; int cFileName; } ;
struct TYPE_10__ {TYPE_1__ fd; } ;
struct TYPE_9__ {int wFlags; } ;
typedef TYPE_2__* PDNODE ;
typedef int LPTSTR ;
typedef TYPE_3__ LFNDTA ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ATTR_DIR ;
 int AddBackslash (int ) ;
 scalar_t__ FALSE ;
 int ISDOTDIR (int ) ;
 int TF_HASCHILDREN ;
 int WFFindClose (TYPE_3__*) ;
 scalar_t__ WFFindFirst (TYPE_3__*,int ,int) ;
 scalar_t__ WFFindNext (TYPE_3__*) ;
 int lstrcat (int ,int ) ;
 int lstrcpy (int ,int ) ;
 int szMessage ;
 int szStarDotStar ;

VOID
ScanDirLevel(PDNODE pParentNode, LPTSTR szPath, DWORD view)
{
  BOOL bFound;
  LFNDTA lfndta;


  lstrcpy(szMessage, szPath);
  AddBackslash(szMessage);
  lstrcat(szMessage, szStarDotStar);



  bFound = WFFindFirst(&lfndta, szMessage, ATTR_DIR | view);

  while (bFound)
    {

      if (!ISDOTDIR(lfndta.fd.cFileName) &&
         (lfndta.fd.dwFileAttributes & ATTR_DIR)) {

         pParentNode->wFlags |= TF_HASCHILDREN;
         bFound = FALSE;
      } else

         bFound = WFFindNext(&lfndta);
    }

  WFFindClose(&lfndta);
}
