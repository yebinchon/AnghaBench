
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpszFI; int * hIcon; int * szExt; struct TYPE_5__* next; } ;
typedef int TCHAR ;
typedef TYPE_1__** PPDOCBUCKET ;
typedef TYPE_1__* PDOCBUCKET ;
typedef int * LPTSTR ;
typedef int INT ;
typedef int DOCBUCKET ;


 int ByteCountOf (int) ;
 int CharLower (int *) ;
 int DOCHASHFUNC (int *) ;
 scalar_t__ DocFind (TYPE_1__**,int *) ;
 int EXTSIZ ;
 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int RemoveEndQuote (int *) ;
 int lstrcpy (int *,int *) ;
 int lstrlen (int *) ;

INT
DocInsert(PPDOCBUCKET ppDocBucket,
         LPTSTR lpszExt,
         LPTSTR lpszFileIcon)
{
   PDOCBUCKET pDocBucket;
   INT iBucket;
   TCHAR szExt[EXTSIZ];





   if (lstrlen(lpszExt) >= EXTSIZ || !ppDocBucket)
      return FALSE;




   if (DocFind(ppDocBucket, lpszExt)) {
      return -1;
   }

   pDocBucket = (PDOCBUCKET) LocalAlloc(LPTR,sizeof(DOCBUCKET));

   if (!pDocBucket) {
      return 0;
   }

   iBucket = DOCHASHFUNC(lpszExt);




   pDocBucket->next = ppDocBucket[iBucket];

   CharLower(lpszExt);
   lstrcpy(szExt, lpszExt);
   RemoveEndQuote(szExt);
   lstrcpy(pDocBucket->szExt, szExt);

   pDocBucket->hIcon = ((void*)0);
   pDocBucket->lpszFI = ((void*)0);

   if (lpszFileIcon != ((void*)0))
    pDocBucket->lpszFI = (LPTSTR) LocalAlloc(LPTR, ByteCountOf(lstrlen(lpszFileIcon)+1));
   if (pDocBucket->lpszFI != ((void*)0))
   lstrcpy(pDocBucket->lpszFI, lpszFileIcon);

   ppDocBucket[iBucket] = pDocBucket;

   return 1;
}
