
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* dup_basename (char const*,char const*) ;
 int isalnum (char) ;

__attribute__((used)) static char *dup_basename_token(const char *name, const char *ext)
{
    char *p, *ret = dup_basename( name, ext );

    for (p = ret; *p; p++) if (!isalnum(*p)) *p = '_';
    return ret;
}
