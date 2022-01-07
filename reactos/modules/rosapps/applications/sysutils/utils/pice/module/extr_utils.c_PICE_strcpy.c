
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;


 int PICE_memcpy (char*,char*,scalar_t__) ;
 scalar_t__ PICE_strlen (char*) ;

char* PICE_strcpy(char* s1,char* s2)
{
 ULONG len2 = PICE_strlen(s2);

 PICE_memcpy(s1,s2,len2+1);

 return s1;
}
