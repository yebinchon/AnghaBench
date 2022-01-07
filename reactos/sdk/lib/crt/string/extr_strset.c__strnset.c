
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char* _strnset(char* szToFill, int szFill, size_t sizeMaxFill)
{
 char *t = szToFill;
 int i = 0;
 while (*szToFill != 0 && i < (int) sizeMaxFill)
 {
  *szToFill = szFill;
  szToFill++;
  i++;

 }
 return t;
}
