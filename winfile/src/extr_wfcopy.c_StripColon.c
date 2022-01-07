
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPTSTR ;
typedef int INT ;


 scalar_t__ CHAR_COLON ;
 scalar_t__ CHAR_NULL ;
 int lstrlen (scalar_t__*) ;

LPTSTR
StripColon(register LPTSTR pPath)
{
   register INT cb = lstrlen(pPath);

   if (cb > 2 && pPath[cb-1] == CHAR_COLON)
      pPath[cb-1] = CHAR_NULL;

   return pPath;
}
