
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int szExt; struct TYPE_6__* next; } ;
typedef int TCHAR ;
typedef TYPE_1__** PPDOCBUCKET ;
typedef TYPE_1__* PDOCBUCKET ;
typedef int LPTSTR ;


 int CharLower (int *) ;
 size_t DOCHASHFUNC (int *) ;
 int EXTSIZ ;
 TYPE_1__* FALSE ;
 int RemoveEndQuote (int *) ;
 int lstrcmp (int ,int *) ;
 int lstrcpy (int *,int ) ;
 int lstrlen (int ) ;

PDOCBUCKET
DocFind(PPDOCBUCKET ppDocBucket, LPTSTR lpszExt)
{
   PDOCBUCKET pDocBucket;
   TCHAR szExt[EXTSIZ];




   if (lstrlen(lpszExt) >= EXTSIZ || !ppDocBucket)
      return FALSE;

   lstrcpy(szExt, lpszExt);

   CharLower(szExt);
   RemoveEndQuote(szExt);

   for (pDocBucket=ppDocBucket[DOCHASHFUNC(szExt)]; pDocBucket; pDocBucket = pDocBucket->next) {

      if (!lstrcmp(pDocBucket->szExt, szExt)) {

         return pDocBucket;
      }
   }

   return ((void*)0);
}
