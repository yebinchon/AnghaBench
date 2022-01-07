
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__* LPTSTR ;


 scalar_t__ CHAR_HASH ;
 scalar_t__ CHAR_NULL ;
 scalar_t__* CharNext (scalar_t__*) ;

VOID
FixupNulls(LPTSTR p)
{
   LPTSTR pT;

   while (*p) {
      if (*p == CHAR_HASH) {
         pT = p;
         p = CharNext(p);
         *pT = CHAR_NULL;
      }
      else
         p = CharNext(p);
   }
}
