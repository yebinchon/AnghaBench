
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static char *concat_str(const char *prefix, const char *str)
{
    char *ret = xmalloc(strlen(prefix) + strlen(str) + 1);
    strcpy(ret, prefix);
    strcat(ret, str);
    return ret;
}
