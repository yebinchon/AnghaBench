
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

char *
StrDup(const char *buf)
{
 char *cp;
 size_t len;

 if (buf == ((void*)0))
  return (((void*)0));

 len = strlen(buf) + 1;
 cp = (char *) malloc(len);
 if (cp != ((void*)0))
  (void) memcpy(cp, buf, len);
 return (cp);
}
