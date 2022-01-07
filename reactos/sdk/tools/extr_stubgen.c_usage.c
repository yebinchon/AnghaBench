
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void usage( char *name ) {
    fprintf( stderr,
             "Usage: %s [-n nm] [-m make] libs...\n"
             "nm   -- The command used to run nm on reactos objects\n"
             "make -- The command used to build reactos\n\n"
             "libs are import libraries (.a files) typically from\n"
             "dk/lib/nkm and dk/lib/w32\n",
             name );
}
