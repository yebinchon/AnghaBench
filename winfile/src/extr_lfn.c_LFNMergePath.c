
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;
typedef scalar_t__* LPTSTR ;
typedef int INT ;
typedef int BOOL ;


 int AddBackslash (scalar_t__*) ;
 scalar_t__ CHAR_BACKSLASH ;
 scalar_t__ CHAR_DOT ;
 scalar_t__ CHAR_NULL ;
 scalar_t__ COUNTOF (scalar_t__*) ;
 int FindFileName (scalar_t__*) ;
 int I_LFNEditName (scalar_t__*,int ,scalar_t__*,scalar_t__) ;
 int MAXPATHLEN ;
 int RemoveLast (scalar_t__*) ;
 int TRUE ;
 int lstrcpy (scalar_t__*,scalar_t__*) ;
 int lstrlen (scalar_t__*) ;

BOOL
LFNMergePath(LPTSTR lpMask, LPTSTR lpFile)
{
   TCHAR szT[MAXPATHLEN*2];
   INT iResStrlen;





   lstrcpy( szT, lpMask );
   RemoveLast( szT );




   AddBackslash(szT);







   if (!( CHAR_BACKSLASH == lpFile[0] && CHAR_NULL == lpFile[1] )) {

      iResStrlen = lstrlen( szT );

      I_LFNEditName(lpFile,
         FindFileName( lpMask ),
         szT + iResStrlen,
         COUNTOF(szT) - iResStrlen);



      iResStrlen = lstrlen( szT );
      if ((iResStrlen != 0) && CHAR_DOT == szT[iResStrlen - 1])
         szT[ iResStrlen-1 ] = CHAR_NULL;
   }

   lstrcpy(lpMask, szT);
   return TRUE;
}
