#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  temp ;
struct TYPE_2__ {char const* name; } ;
typedef  int OutputFormat ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  OUTPUT_BORLAND_DEF 132 
#define  OUTPUT_GNU_VERMAP 131 
#define  OUTPUT_NETWARE_IMP 130 
#define  OUTPUT_WATCOM_LBC 129 
#define  OUTPUT_WINDOWS_DEF 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int num_names ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (char const*,char) ; 
 TYPE_1__* the_names ; 

__attribute__((used)) static void
FUNC4( FILE*         out,
            OutputFormat  format,
            const char*   dll_name )
{
  int  nn;


  switch ( format )
  {
    case OUTPUT_WINDOWS_DEF:
      if ( dll_name )
        FUNC1( out, "LIBRARY %s\n", dll_name );

      FUNC1( out, "DESCRIPTION  FreeType 2 DLL\n" );
      FUNC1( out, "EXPORTS\n" );
      for ( nn = 0; nn < num_names; nn++ )
        FUNC1( out, "  %s\n", the_names[nn].name );
      break;

    case OUTPUT_BORLAND_DEF:
      if ( dll_name )
        FUNC1( out, "LIBRARY %s\n", dll_name );

      FUNC1( out, "DESCRIPTION  FreeType 2 DLL\n" );
      FUNC1( out, "EXPORTS\n" );
      for ( nn = 0; nn < num_names; nn++ )
        FUNC1( out, "  _%s\n", the_names[nn].name );
      break;

    case OUTPUT_WATCOM_LBC:
      {
        const char*  dot;
        char         temp[512];


        if ( !dll_name )
        {
          FUNC1( &stderr,
                   "you must provide a DLL name with the -d option!\n" );
          FUNC0( 4 );
        }

        /* we must omit the .dll suffix from the library name */
        dot = FUNC3( dll_name, '.' );
        if ( dot )
        {
          int  len = dot - dll_name;


          if ( len > (int)( sizeof ( temp ) - 1 ) )
            len = sizeof ( temp ) - 1;

          FUNC2( temp, dll_name, len );
          temp[len] = 0;

          dll_name = (const char*)temp;
        }

        for ( nn = 0; nn < num_names; nn++ )
          FUNC1( out, "++_%s.%s.%s\n", the_names[nn].name, dll_name,
                        the_names[nn].name );
      }
      break;

    case OUTPUT_NETWARE_IMP:
      {
        if ( dll_name )
          FUNC1( out, "  (%s)\n", dll_name );
        for ( nn = 0; nn < num_names - 1; nn++ )
          FUNC1( out, "  %s,\n", the_names[nn].name );
        FUNC1( out, "  %s\n", the_names[num_names - 1].name );
      }
      break;

    case OUTPUT_GNU_VERMAP:
      {
        FUNC1( out, "{\n\tglobal:\n" );
        for ( nn = 0; nn < num_names; nn++ )
          FUNC1( out, "\t\t%s;\n", the_names[nn].name );
        FUNC1( out, "\tlocal:\n\t\t*;\n};\n" );
      }
      break;

    default:  /* LIST */
      for ( nn = 0; nn < num_names; nn++ )
        FUNC1( out, "%s\n", the_names[nn].name );
  }
}