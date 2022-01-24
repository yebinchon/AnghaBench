#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fontlist {int isbinary; int isascii; int ishex; char* name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void
  FUNC5( struct fontlist*  item )
  {
    FILE*  foo;


    item->isbinary = item->isascii = item->ishex = false;

    foo = FUNC1( item->name, "rb" );
    if ( foo )
    {
      /* Try to guess the file type from the first few characters... */
      int  ch1 = FUNC3( foo );
      int  ch2 = FUNC3( foo );
      int  ch3 = FUNC3( foo );
      int  ch4 = FUNC3( foo );


      FUNC0( foo );

      if ( ( ch1 == 0   && ch2 == 1   && ch3 == 0   && ch4 == 0   ) ||
           ( ch1 == 'O' && ch2 == 'T' && ch3 == 'T' && ch4 == 'O' ) ||
           ( ch1 == 't' && ch2 == 'r' && ch3 == 'u' && ch4 == 'e' ) ||
           ( ch1 == 't' && ch2 == 't' && ch3 == 'c' && ch4 == 'f' ) )
      {
        /* ttf, otf, ttc files */
        item->isbinary = true;
      }
      else if ( ch1 == 0x80 && ch2 == '\01' )
      {
        /* PFB header */
        item->isbinary = true;
      }
      else if ( ch1 == '%' && ch2 == '!' )
      {
        /* Random PostScript */
        if ( FUNC4( item->name, ".pfa" ) ||
             FUNC4( item->name, ".PFA" ) )
          item->ishex = true;
        else
          item->isascii = true;
      }
      else if ( ch1 == 1 && ch2 == 0 && ch3 == 4 )
      {
        /* Bare CFF */
        item->isbinary = true;
      }
      else if ( ch1 == 'S' && ch2 == 'T' && ch3 == 'A' && ch4 == 'R' )
      {
        /* BDF */
        item->ishex = true;
      }
      else if ( ch1 == 'P' && ch2 == 'F' && ch3 == 'R' && ch4 == '0' )
      {
        /* PFR */
        item->isbinary = true;
      }
      else if ( ( ch1 == '\1' && ch2 == 'f' && ch3 == 'c' && ch4 == 'p' ) ||
                ( ch1 == 'M'  && ch2 == 'Z' )                             )
      {
        /* Windows FON */
        item->isbinary = true;
      }
      else
      {
        FUNC2( stderr,
                 "Can't recognize file type of `%s', assuming binary\n",
                 item->name );
        item->isbinary = true;
      }
    }
    else
    {
      FUNC2( stderr, "Can't open `%s' for typing the file.\n",
               item->name );
      item->isbinary = true;
    }
  }