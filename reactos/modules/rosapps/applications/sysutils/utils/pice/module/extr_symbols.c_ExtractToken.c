
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPSTR ;


 scalar_t__ PICE_isalpha (char) ;
 scalar_t__ PICE_isdigit (char) ;
 char* pExpression ;
 size_t ulIndex ;

void ExtractToken(LPSTR pStringToken)
{
 while(PICE_isalpha(pExpression[ulIndex]) || PICE_isdigit(pExpression[ulIndex]) || pExpression[ulIndex]=='_')
 {
  *pStringToken++=pExpression[ulIndex++];
  *pStringToken=0;
 }
}
