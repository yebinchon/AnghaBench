
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lpBuf ;
typedef scalar_t__ WORD ;
typedef int TCHAR ;
typedef int* PDWORD ;
typedef int* LPTSTR ;
typedef int INT ;
typedef int DWORD ;
typedef int BOOL ;


 int CHAR_NEWLINE ;
 int CHAR_NULL ;
 int COUNTOF (int *) ;
 int DE_BEGIN ;
 int ERROR_EXTENDED_ERROR ;
 scalar_t__ ERROR_RESOURCE_LANG_NOT_FOUND ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FORMAT_MESSAGE_MAX_WIDTH_MASK ;
 int FormatMessage (int,int *,int,scalar_t__,int*,int,int *) ;
 int* FormatSuggest (int) ;
 scalar_t__ GetLastError () ;
 scalar_t__ LANGIDFROMLCID (int ) ;
 int LANG_NEUTRAL ;
 int LoadString (int ,int,int*,int) ;
 scalar_t__ MAKELANGID (int ,int ) ;
 int SUBLANG_NEUTRAL ;
 int SUG_IGN_FORMATMESSAGE ;
 scalar_t__ WAITNET_LOADED ;
 int WNetGetLastError (int*,int*,int,int *,int ) ;
 int hAppInstance ;
 int lcid ;
 int lstrlen (int*) ;

DWORD
FormatError(
   BOOL bNullString,
   LPTSTR lpBuf,
   INT iSize,
   DWORD dwError)
{
   INT iLen;
   DWORD dwNumChars = 0;
   PDWORD pdwSuggest;
   INT iAddNewline = 0;

   WORD wLangId;
   BOOL bTryAgain;




   if (!dwError)
      return 0;

   if (bNullString)
      lpBuf[0] = 0;

   iLen = lstrlen(lpBuf);

   lpBuf += iLen;
   iSize -= iLen;

   if (iSize <=0)
      return 0;




   pdwSuggest = FormatSuggest( dwError );







   if ( !(dwError & DE_BEGIN) &&
      !(pdwSuggest && pdwSuggest[1] & SUG_IGN_FORMATMESSAGE) ) {


      if ( ERROR_EXTENDED_ERROR == dwError ) {
         DWORD dwErrorCode;
         TCHAR szProvider[128];


         if (WAITNET_LOADED) {



            WNetGetLastError( &dwErrorCode, lpBuf, iSize, szProvider,
               COUNTOF(szProvider));
         }

         return lstrlen(lpBuf);
      }
      wLangId = LANGIDFROMLCID(lcid);

      do {
         dwNumChars = FormatMessage(
            FORMAT_MESSAGE_FROM_SYSTEM |
               FORMAT_MESSAGE_IGNORE_INSERTS |
               FORMAT_MESSAGE_MAX_WIDTH_MASK,
            ((void*)0), dwError, wLangId,
            lpBuf, iSize*sizeof(lpBuf[0]), ((void*)0) );

         bTryAgain = !dwNumChars &&
            MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL) != wLangId &&
            ERROR_RESOURCE_LANG_NOT_FOUND == GetLastError();

         wLangId = MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL);

      } while (bTryAgain);

      iAddNewline = 2;
   }




   if (!dwNumChars) {
      lpBuf[0] = CHAR_NULL;
   }




   if (pdwSuggest && pdwSuggest[2]) {

      DWORD dwNumTemp = 0;



      lpBuf += dwNumChars + iAddNewline;
      iSize -= dwNumChars + iAddNewline;

      if (!iSize)
         goto SuggestPunt;





      for(;iAddNewline; iAddNewline--)
         lpBuf[-iAddNewline] = CHAR_NEWLINE;

      dwNumTemp = LoadString ( hAppInstance, pdwSuggest[2], lpBuf, iSize );

      return dwNumTemp+dwNumChars+iAddNewline;
   }

SuggestPunt:




   if ( dwNumChars ) {
      if ( CHAR_NEWLINE == lpBuf[dwNumChars-1] ) {
         lpBuf[dwNumChars-1] = CHAR_NULL;
      }

      if ( dwNumChars > 1 ) {
         if ( 0x000D == lpBuf[dwNumChars-2] ) {
            lpBuf[dwNumChars-2] = CHAR_NULL;
         }
      }
   }

   return dwNumChars;
}
