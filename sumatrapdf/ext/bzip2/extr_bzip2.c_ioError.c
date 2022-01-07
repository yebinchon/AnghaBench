
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanUpAndFail (int) ;
 int fprintf (int ,char*,char*) ;
 int perror (char*) ;
 char* progName ;
 int showFileNames () ;
 int stderr ;

__attribute__((used)) static
void ioError ( void )
{
   fprintf ( stderr,
             "\n%s: I/O or other error, bailing out.  "
             "Possible reason follows.\n",
             progName );
   perror ( progName );
   showFileNames();
   cleanUpAndFail( 1 );
}
