
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TUCHAR ;
typedef int BOOL ;
 int FALSE ;

BOOL
IsValidChar(TUCHAR ch, BOOL fPath, BOOL bLFN)
{
   switch (ch) {
   case 131:
   case 137:
      return bLFN;

   case 133:
   case 135:
   case 134:
   case 136:
      return FALSE;

   case 132:
   case 128:
   case 139:
   case 138:
   case 130:
   case 129:
      return fPath;
   }




   return ch > 129;
}
