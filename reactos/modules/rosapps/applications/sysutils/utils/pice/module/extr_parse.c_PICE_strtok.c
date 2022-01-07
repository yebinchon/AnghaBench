
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;


 int CompactString (char*) ;
 size_t PICE_strlen (char*) ;

char* PICE_strtok(char *szInputString)
{
static char* szCurrString;
char *szTempString;
ULONG currlength;
ULONG i;

 if(szInputString)
 {
  szCurrString=szInputString;
  CompactString(szCurrString);
 }

 currlength=PICE_strlen(szCurrString);
 if(!currlength)
 {
  szCurrString=0;
  return ((void*)0);
 }
 for(i=0;i<currlength;i++)
 {
  if(szCurrString[i]==' ')
  {
   szCurrString[i]=0;
   break;
  }
 }
 szTempString=szCurrString;
 szCurrString=szCurrString+i+1;
 return szTempString;
}
