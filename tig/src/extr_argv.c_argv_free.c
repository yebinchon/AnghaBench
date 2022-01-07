
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

void
argv_free(const char *argv[])
{
 int argc;

 if (!argv)
  return;
 for (argc = 0; argv[argc]; argc++)
  free((void *) argv[argc]);
 argv[0] = ((void*)0);
}
