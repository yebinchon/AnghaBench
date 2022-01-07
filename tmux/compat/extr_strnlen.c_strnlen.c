
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
strnlen(const char *str, size_t maxlen)
{
 const char *cp;

 for (cp = str; maxlen != 0 && *cp != '\0'; cp++, maxlen--)
  ;

 return (size_t)(cp - str);
}
