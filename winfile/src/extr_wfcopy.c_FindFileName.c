
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPTSTR ;


 scalar_t__ CHAR_BACKSLASH ;
 scalar_t__ CHAR_COLON ;

LPTSTR
FindFileName(register LPTSTR pPath)
{
   register LPTSTR pT;

   for (pT=pPath; *pPath; pPath++) {
      if ((pPath[0] == CHAR_BACKSLASH || pPath[0] == CHAR_COLON) && pPath[1])
         pT = pPath+1;
   }

   return(pT);
}
