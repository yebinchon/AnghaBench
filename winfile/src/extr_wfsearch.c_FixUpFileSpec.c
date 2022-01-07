
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int VOID ;
typedef scalar_t__* LPWSTR ;


 scalar_t__ CHAR_DOT ;
 scalar_t__ CHAR_STAR ;
 int MAXPATHLEN ;
 scalar_t__* SZ_DOTSTAR ;
 scalar_t__* SZ_STAR ;
 int lstrcat (scalar_t__*,scalar_t__*) ;
 int lstrcpy (scalar_t__*,scalar_t__*) ;

VOID
FixUpFileSpec(
   LPWSTR szFileSpec)
{
  WCHAR szTemp[MAXPATHLEN+1];
  register LPWSTR p;

  if (*szFileSpec == CHAR_DOT) {
    lstrcpy(szTemp, SZ_STAR);
    lstrcat(szTemp, szFileSpec);
    lstrcpy(szFileSpec, szTemp);
  }





  p = szFileSpec;
  while ((*p) && (*p != CHAR_DOT))
      ++p;

  if ((!*p) && (p != szFileSpec)) {
     --p;

     if (*p == CHAR_STAR)
        lstrcat(p, SZ_DOTSTAR);
  }
}
