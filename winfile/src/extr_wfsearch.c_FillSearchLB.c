
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int * LPXDTALINK ;
typedef int LPWSTR ;
typedef char* LPWCH ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef int BOOL ;


 int COUNTOF (char*) ;
 int FixUpFileSpec (char*) ;
 scalar_t__ LB_ERR ;
 int LB_GETCURSEL ;
 int LB_SETSEL ;
 int MAXPATHLEN ;
 scalar_t__ SearchList (int ,char*,char*,int ,int ,int **,scalar_t__,int ) ;
 scalar_t__ SendMessage (int ,int ,int ,long) ;
 int StripFilespec (char*) ;
 int StripPath (char*) ;
 char TEXT (char) ;
 int TRUE ;
 int _TRUNCATE ;
 scalar_t__ dwLastUpdateTime ;
 int iDirsRead ;
 int lstrcpy (char*,int ) ;
 scalar_t__ maxExt ;
 int wcsncpy_s (char*,int ,char*,int ) ;

INT
FillSearchLB(HWND hwndLB, LPWSTR szSearchFileSpec, BOOL bRecurse, BOOL bIncludeSubdirs)
{
   INT iRet;
   INT iFileCount;
   WCHAR szFileSpec[MAXPATHLEN+1];
   WCHAR szPathName[MAXPATHLEN+1];
   WCHAR szWildCard[20];
   LPWCH lpszCurrentFileSpecStart;
   LPWCH lpszCurrentFileSpecEnd;
   LPXDTALINK lpStart = ((void*)0);




   lstrcpy(szFileSpec, szSearchFileSpec);
   lstrcpy(szPathName, szSearchFileSpec);

   StripPath(szFileSpec);
   StripFilespec(szPathName);

   lpszCurrentFileSpecEnd = szFileSpec;

   maxExt = 0;

   iDirsRead = 1;
   dwLastUpdateTime = 0;
   iRet = 0;
   iFileCount = 0;




   while (*lpszCurrentFileSpecEnd) {
   lpszCurrentFileSpecStart = lpszCurrentFileSpecEnd;


   while ((*lpszCurrentFileSpecEnd) && (*lpszCurrentFileSpecEnd) != ';')
   lpszCurrentFileSpecEnd++;



   if (*lpszCurrentFileSpecEnd == ';') {
    *lpszCurrentFileSpecEnd = TEXT('\0');
    lpszCurrentFileSpecEnd++;
   }


      wcsncpy_s(szWildCard, COUNTOF(szWildCard), lpszCurrentFileSpecStart, _TRUNCATE);

   FixUpFileSpec(szWildCard);

   iRet = SearchList(hwndLB,
    szPathName,
    szWildCard,
    bRecurse,
    bIncludeSubdirs,
    &lpStart,
    iFileCount,
    TRUE);

      iFileCount = iRet;
   }




   if (LB_ERR == SendMessage(hwndLB, LB_GETCURSEL, 0, 0L))
      SendMessage(hwndLB, LB_SETSEL, TRUE, 0L);

   return(iRet);
}
