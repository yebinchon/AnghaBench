
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOMEM ;
 int assert (int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 char* gettext (char*) ;
 int stderr ;

void
zpool_no_memory(void)
{
 assert(errno == ENOMEM);
 (void) fprintf(stderr,
     gettext("internal error: out of memory\n"));
 exit(1);
}
