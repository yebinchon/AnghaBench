
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;


 size_t PICE_strlen (char*) ;

char* PICE_strrev(char* s)
{
ULONG i,j,len=PICE_strlen(s)-1;
char c;

 for(i=0,j=len;i<j;i++,j--)
 {
  c=s[i]; s[i]=s[j]; s[j]=c;
 }

 return s;
}
