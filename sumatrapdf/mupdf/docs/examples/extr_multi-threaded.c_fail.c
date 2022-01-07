
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void
fail(char *msg)
{
 fprintf(stderr, "%s\n", msg);
 abort();
}
