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
struct fontlist {char* name; int len; scalar_t__ isascii; scalar_t__ isbinary; } ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 size_t FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (struct fontlist*) ; 
 int FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int
  FUNC12( struct fontlist*  item,
            char*             newfont )
  {
    static char   buffer[8096];
    FILE          *good, *newf;
    size_t        len;
    unsigned int  i, err_cnt;


    good = FUNC3( item->name, "r" );
    if ( !good )
    {
      FUNC4( stderr, "Can't open `%s'\n", item->name );
      return false;
    }

    newf = FUNC3( newfont, "w+" );
    if ( !newf )
    {
      FUNC4( stderr, "Can't create temporary output file `%s'\n",
               newfont );
      FUNC0( 1 );
    }

    while ( ( len = FUNC5( buffer, 1, sizeof ( buffer ), good ) ) > 0 )
      FUNC7( buffer, 1, len, newf );

    FUNC1( good );

    err_cnt = FUNC8( item );
    for ( i = 0; i < err_cnt; i++ )
    {
      FUNC6( newf, FUNC9( 0, (int)( item->len - 1 ) ), SEEK_SET );

      if ( item->isbinary )
        FUNC10( FUNC9( 0, 0xFF ), newf );
      else if ( item->isascii )
        FUNC10( FUNC9( 0x20, 0x7E ), newf );
      else
      {
        int  hex = FUNC9( 0, 15 );


        if ( hex < 10 )
          hex += '0';
        else
          hex += 'A' - 10;

        FUNC10( hex, newf );
      }
    }

    if ( FUNC2( newf ) )
    {
      FUNC1( newf );
      FUNC11( newfont );
      return false;
    }

    FUNC1( newf );

    return true;
  }