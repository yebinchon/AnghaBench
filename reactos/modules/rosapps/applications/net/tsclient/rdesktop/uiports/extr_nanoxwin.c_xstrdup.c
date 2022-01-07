
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int perror (char*) ;
 char* strdup (char const*) ;

char * xstrdup(const char * s)
{
  char * mem = strdup(s);
  if (mem == ((void*)0))
  {
    perror("strdup");
    exit(1);
  }
  return mem;
}
