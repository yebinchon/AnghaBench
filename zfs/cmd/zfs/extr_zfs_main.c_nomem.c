
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 char* gettext (char*) ;
 int stderr ;

void
nomem(void)
{
 (void) fprintf(stderr, gettext("internal error: out of memory\n"));
 exit(1);
}
