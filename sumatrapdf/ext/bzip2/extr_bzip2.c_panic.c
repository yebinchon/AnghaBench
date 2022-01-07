
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 int cleanUpAndFail (int) ;
 int fprintf (int ,char*,char*,char const*) ;
 char* progName ;
 int showFileNames () ;
 int stderr ;

__attribute__((used)) static
void panic ( const Char* s )
{
   fprintf ( stderr,
             "\n%s: PANIC -- internal consistency error:\n"
             "\t%s\n"
             "\tThis is a BUG.  Please report it to:\n"
             "\tbzip2-devel@sourceware.org\n",
             progName, s );
   showFileNames();
   cleanUpAndFail( 3 );
}
