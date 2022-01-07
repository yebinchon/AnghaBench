
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* fgets (char*,int,int *) ;
 int memset (char*,int ,size_t) ;
 int strlen (char*) ;

char *
FGets(char *str, size_t size, FILE *fp)
{
 char *cp, *nlptr;

 cp = fgets(str, ((int) size) - 1, fp);
 if (cp != ((void*)0)) {
  cp[((int) size) - 1] = '\0';
  nlptr = cp + strlen(cp) - 1;
  if (*nlptr == '\n')
   *nlptr = '\0';
 } else {
  memset(str, 0, size);
 }
 return cp;
}
