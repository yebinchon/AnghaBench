
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPTSTR ;
typedef int DWORD ;


 scalar_t__ CHAR_COLON ;
 int FILE_83_CI ;
 int FILE_LONG ;
 scalar_t__ IsFATName (scalar_t__*) ;
 int IsLFNDrive (scalar_t__*) ;

DWORD
GetNameType(LPTSTR lpName)
{
   if (CHAR_COLON == *(lpName+1)) {
      if (!IsLFNDrive(lpName))
         return FILE_83_CI;
   } else if(IsFATName(lpName))
      return FILE_83_CI;

   return(FILE_LONG);
}
