
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROGRAM_NAME ;
 int PROGRAM_VERSION ;
 int exit (int) ;
 int fprintf (int ,char const* const,int ,int ,int ) ;
 int stderr ;

__attribute__((used)) static void
usage( void )
{
  static const char* const format =
   "%s %s: extract FreeType API names from header files\n\n"
   "this program is used to extract the list of public FreeType API\n"
   "functions. It receives the list of header files as argument and\n"
   "generates a sorted list of unique identifiers\n\n"

   "usage: %s header1 [options] [header2 ...]\n\n"

   "options:   -      : parse the content of stdin, ignore arguments\n"
   "           -v     : verbose mode, output sent to standard error\n"
   "           -oFILE : write output to FILE instead of standard output\n"
   "           -dNAME : indicate DLL file name, 'freetype.dll' by default\n"
   "           -w     : output .DEF file for Visual C++ and Mingw\n"
   "           -wB    : output .DEF file for Borland C++\n"
   "           -wW    : output Watcom Linker Response File\n"
   "           -wN    : output NetWare Import File\n"
   "\n";

  fprintf( stderr,
           format,
           PROGRAM_NAME,
           PROGRAM_VERSION,
           PROGRAM_NAME
           );
  exit(1);
}
