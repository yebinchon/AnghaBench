
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int ftLastWriteTime; int nFileSizeLow; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef TYPE_2__* PLFNDTA ;
typedef scalar_t__ LPTSTR ;


 int PutDate (int *,scalar_t__) ;
 int PutTime (int *,scalar_t__) ;
 int lstrcat (scalar_t__,int ) ;
 scalar_t__ lstrlen (scalar_t__) ;
 int szBytes ;
 int szSpace ;
 int wsprintf (scalar_t__,int ,int ) ;

VOID
BuildDateLine(LPTSTR szTemp, PLFNDTA plfndta)
{
   wsprintf(szTemp, szBytes, plfndta->fd.nFileSizeLow);
   lstrcat(szTemp, szSpace);
   PutDate(&plfndta->fd.ftLastWriteTime, szTemp + lstrlen(szTemp));
   lstrcat(szTemp, szSpace);
   PutTime(&plfndta->fd.ftLastWriteTime, szTemp + lstrlen(szTemp));
}
