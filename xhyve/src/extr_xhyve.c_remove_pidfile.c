
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int * pidfile ;
 int stderr ;
 int unlink (int *) ;

__attribute__((used)) static void
remove_pidfile()
{
 int error;

 if (pidfile == ((void*)0))
  return;

 error = unlink(pidfile);
 if (error < 0)
  fprintf(stderr, "Failed to remove pidfile\n");
}
