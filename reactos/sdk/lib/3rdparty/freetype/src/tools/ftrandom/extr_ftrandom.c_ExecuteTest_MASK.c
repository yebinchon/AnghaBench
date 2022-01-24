#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num_faces; } ;
typedef  int /*<<< orphan*/  FT_Library ;
typedef  TYPE_1__* FT_Face ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,long,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
  FUNC7( char*  testfont )
  {
    FT_Library  context;
    FT_Face     face;


    if ( FUNC2( &context ) )
    {
      FUNC6( stderr, "Can't initialize FreeType.\n" );
      FUNC5( 1 );
    }

    if ( FUNC3( context, testfont, 0, &face ) )
    {
      /* The font is erroneous, so if this fails that's ok. */
      FUNC5( 0 );
    }

    if ( face->num_faces == 1 )
      FUNC4( face );
    else
    {
      long  i, num;


      num = face->num_faces;
      FUNC0( face );

      for ( i = 0; i < num; i++ )
      {
        if ( !FUNC3( context, testfont, i, &face ) )
          FUNC4( face );
      }
    }

    FUNC1( context );

    FUNC5( 0 );
  }