
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ STBDS_REALLOC (int *,int ,size_t) ;
 int memmove (char*,char*,size_t) ;
 int strlen (char*) ;

__attribute__((used)) static char *stbds_strdup(char *str)
{


  size_t len = strlen(str)+1;
  char *p = (char*) STBDS_REALLOC(((void*)0), 0, len);
  memmove(p, str, len);
  return p;
}
