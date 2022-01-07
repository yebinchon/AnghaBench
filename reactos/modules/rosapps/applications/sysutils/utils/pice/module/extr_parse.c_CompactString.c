
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef char* LPSTR ;


 int PICE_strcpy (char*,char*) ;
 size_t PICE_strlen (char*) ;

void CompactString(LPSTR p)
{
ULONG i;

 for(i=1;i<PICE_strlen(p);i++)
 {
  if(p[i]==' ' && p[i-1]==' ')
  {
   PICE_strcpy(&p[i-1],&p[i]);
   i=1;
  }
 }
}
