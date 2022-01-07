
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef char* LPSTR ;


 size_t PICE_strlen (char*) ;

LPSTR GetShortName(LPSTR p)
{
ULONG i;


 for(i=PICE_strlen(p);p[i]!='\\' && &p[i]!=p;i--);

 if(&p[i]!=p)i++;


 return &p[i];
}
