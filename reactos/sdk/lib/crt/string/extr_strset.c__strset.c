
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char* _strset(char* szToFill, int szFill)
{
 char *t = szToFill;
 while (*szToFill != 0)
 {
  *szToFill = szFill;
  szToFill++;

 }
 return t;
}
