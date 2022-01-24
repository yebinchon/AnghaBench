#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int glyph_count; } ;
typedef  TYPE_1__* OTV_Validator ;
typedef  int FT_UInt ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_DATA ; 
 int /*<<< orphan*/  FT_INVALID_FORMAT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_1__*,int) ; 

__attribute__((used)) static void
  FUNC6( FT_Bytes       table,
                                        OTV_Validator  otvalid )
  {
    FT_Bytes  p = table, Coverage;
    FT_UInt   SubstFormat;
    FT_UInt   BacktrackGlyphCount, LookaheadGlyphCount, GlyphCount;


    FUNC2( "ReverseChainSingleSubst" );

    FUNC1( 2 );
    SubstFormat = FUNC0( p );

    FUNC3(( " (format %d)\n", SubstFormat ));

    switch ( SubstFormat )
    {
    case 1:     /* ReverseChainSingleSubstFormat1 */
      FUNC1( 4 );
      Coverage            = table + FUNC0( p );
      BacktrackGlyphCount = FUNC0( p );

      FUNC3(( " (BacktrackGlyphCount = %d)\n", BacktrackGlyphCount ));

      FUNC5( Coverage, otvalid, -1 );

      FUNC1( BacktrackGlyphCount * 2 + 2 );

      for ( ; BacktrackGlyphCount > 0; BacktrackGlyphCount-- )
        FUNC5( table + FUNC0( p ), otvalid, -1 );

      LookaheadGlyphCount = FUNC0( p );

      FUNC3(( " (LookaheadGlyphCount = %d)\n", LookaheadGlyphCount ));

      FUNC1( LookaheadGlyphCount * 2 + 2 );

      for ( ; LookaheadGlyphCount > 0; LookaheadGlyphCount-- )
        FUNC5( table + FUNC0( p ), otvalid, -1 );

      GlyphCount = FUNC0( p );

      FUNC3(( " (GlyphCount = %d)\n", GlyphCount ));

      if ( GlyphCount != FUNC4( Coverage ) )
        FT_INVALID_DATA;

      FUNC1( GlyphCount * 2 );

      /* Substitute */
      for ( ; GlyphCount > 0; GlyphCount-- )
        if ( FUNC0( p ) >= otvalid->glyph_count )
          FT_INVALID_DATA;

      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }