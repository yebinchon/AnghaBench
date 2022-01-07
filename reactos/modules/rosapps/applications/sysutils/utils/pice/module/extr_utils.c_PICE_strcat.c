
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;


 int PICE_memcpy (char*,char*,size_t) ;
 size_t PICE_strlen (char*) ;

char* PICE_strcat(char* s1,char* s2)
{
 ULONG len1 = PICE_strlen(s1);
 ULONG len2 = PICE_strlen(s2);

 PICE_memcpy(&s1[len1],s2,len2+1);

 return s1;
}
