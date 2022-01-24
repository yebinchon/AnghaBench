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
typedef  int /*<<< orphan*/  OTV_Validator ;
typedef  int FT_UInt ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
  FUNC6( FT_Bytes       table,
                              OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   MarkGlyphSetCount;


    FUNC3( "MarkGlyphSets" );

    p += 2;     /* skip Format */

    FUNC2( 2 );
    MarkGlyphSetCount = FUNC1( p );

    FUNC4(( " (MarkGlyphSetCount = %d)\n", MarkGlyphSetCount ));

    FUNC2( MarkGlyphSetCount * 4 );      /* CoverageOffsets */

    for ( ; MarkGlyphSetCount > 0; MarkGlyphSetCount-- )
      FUNC5( table + FUNC0( p ), otvalid, -1 );

    OTV_EXIT;
  }