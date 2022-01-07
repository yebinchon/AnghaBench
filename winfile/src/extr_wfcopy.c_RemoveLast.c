
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__* LPTSTR ;


 scalar_t__ CHAR_BACKSLASH ;
 scalar_t__ CHAR_COLON ;
 scalar_t__ CHAR_NULL ;

UINT
RemoveLast(LPTSTR pFile)
{
  LPTSTR pT;
  UINT uChars = 0;

  for (pT=pFile; *pFile; pFile++) {

     if (*pFile == CHAR_BACKSLASH) {

        pT = pFile;
        uChars = 0;

     } else if (*pFile == CHAR_COLON) {

        if (pFile[1] ==CHAR_BACKSLASH) {

           pFile++;

        }

        pT = pFile + 1;

        uChars = 0;
        continue;
     }
     uChars++;
  }

  *pT = CHAR_NULL;
  return uChars;
}
