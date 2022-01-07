
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void
panic( const char* message )
{
  fprintf( stderr, "PANIC: %s\n", message );
  exit(2);
}
