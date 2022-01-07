
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlcat (char*,char*,size_t) ;
 scalar_t__ strlen (char*) ;
 char* xrealloc (char*,size_t) ;
 char* xstrdup (char*) ;

char *
cmd_stringify_argv(int argc, char **argv)
{
 char *buf;
 int i;
 size_t len;

 if (argc == 0)
  return (xstrdup(""));

 len = 0;
 buf = ((void*)0);

 for (i = 0; i < argc; i++) {
  len += strlen(argv[i]) + 1;
  buf = xrealloc(buf, len);

  if (i == 0)
   *buf = '\0';
  else
   strlcat(buf, " ", len);
  strlcat(buf, argv[i], len);
 }
 return (buf);
}
