
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PDWORD ;
typedef size_t INT ;
typedef int DWORD ;






 int ERROR_INVALID_ORDINAL ;





 int** adwSuggest ;

PDWORD
FormatSuggest( DWORD dwError )
{
   PDWORD pdwReturn = ((void*)0);
   INT i;


   if (!dwError)
      return ((void*)0);



   switch(dwError) {
   case 136:
   case 129:
   case 131:
   case 130:
   case 133:
   case 134:
   case 132:
   case 128:
   case 135:
      dwError = ERROR_INVALID_ORDINAL;



   default:
      for (i=0;adwSuggest[i][0]; i++) {
         if ( adwSuggest[i][0] == dwError ) {
            pdwReturn = adwSuggest[i];
            break;
         }
      }
   }
   return pdwReturn;
}
