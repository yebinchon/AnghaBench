
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int PICE_memcpy (char*,char*,int) ;
 int PICE_strlen (char*) ;

char* PICE_strncpy(char* s1,char* s2,int len)
{
 ULONG len2 = PICE_strlen(s2);

 if(len<len2)
  PICE_memcpy(s1,s2,len2+1);
 else
  PICE_memcpy(s1,s2,len);

 return s1;
}
