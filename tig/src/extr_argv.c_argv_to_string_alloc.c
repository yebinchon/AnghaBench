
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ argv_to_string (char const**,char*,size_t,char const*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 scalar_t__ strlen (char const*) ;

char *
argv_to_string_alloc(const char *argv[], const char *sep)
{
 size_t i, size = 0;
 char *buf;

 for (i = 0; argv[i]; i++)
  size += strlen(argv[i]);

 buf = malloc(size + 1);
 if (buf && argv_to_string(argv, buf, size + 1, sep))
  return buf;
 free(buf);
 return ((void*)0);
}
