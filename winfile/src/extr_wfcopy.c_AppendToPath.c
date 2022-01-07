
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__* LPTSTR ;
typedef scalar_t__* LPCTSTR ;


 scalar_t__ CHAR_BACKSLASH ;
 int lstrcpy (scalar_t__*,scalar_t__*) ;

VOID
AppendToPath(LPTSTR pPath, LPCTSTR pMore)
{


  if (*pPath)
    {
      while (*pPath)
          pPath++;

      if (pPath[-1]!=CHAR_BACKSLASH)
          *pPath++=CHAR_BACKSLASH;
    }


  while (*pMore == CHAR_BACKSLASH)
      pMore++;

  lstrcpy(pPath, pMore);
}
