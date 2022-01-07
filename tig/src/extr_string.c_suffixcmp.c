
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;
 int strlen (char const*) ;

int
suffixcmp(const char *str, int slen, const char *suffix)
{
 size_t len = slen >= 0 ? slen : strlen(str);
 size_t suffixlen = strlen(suffix);

 return suffixlen < len ? strcmp(str + len - suffixlen, suffix) : -1;
}
