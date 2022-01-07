
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int PPDOCBUCKET ;
typedef scalar_t__* LPWSTR ;
typedef int LPCWSTR ;
typedef int HLOCAL ;
typedef scalar_t__ DWORD ;


 scalar_t__ CHAR_NULL ;
 scalar_t__ CHAR_SPACE ;
 int DocInsert (int ,scalar_t__*,int *) ;
 scalar_t__ GetProfileString (int ,int ,int ,scalar_t__*,int) ;
 int LMEM_FIXED ;
 scalar_t__* LocalAlloc (int ,int) ;
 int LocalFree (int ) ;
 int szWindows ;

UINT
FillDocType(
   PPDOCBUCKET ppDoc,
   LPCWSTR pszSection,
   LPCWSTR pszDefault)
{
   LPWSTR pszDocuments = ((void*)0);
   LPWSTR p;
   LPWSTR p2;
   UINT uLen = 0;

   UINT uRetval = 0;

   do {

      uLen += 32;

      if (pszDocuments)
         LocalFree((HLOCAL)pszDocuments);

      pszDocuments = LocalAlloc(LMEM_FIXED, uLen*sizeof(WCHAR));

      if (!pszDocuments) {
         return 0;
      }

   } while (GetProfileString(szWindows,
                             pszSection,
                             pszDefault,
                             pszDocuments,
                             uLen) == (DWORD)uLen-2);




   for (p=pszDocuments; *p; p++) {

      if (CHAR_SPACE == *p) {
         *p = CHAR_NULL;
      }
   }

   for(p2=pszDocuments; p2<p; p2++) {

      if (*p2) {
         if (DocInsert(ppDoc, p2, ((void*)0)) == 1)
            uRetval++;

         while(*p2 && p2!=p)
            p2++;
      }
   }

   LocalFree((HLOCAL)pszDocuments);

   return uRetval;
}
