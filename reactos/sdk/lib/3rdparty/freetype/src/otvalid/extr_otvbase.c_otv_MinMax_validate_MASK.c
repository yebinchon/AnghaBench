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
 int MaxCoord ; 
 int MinCoord ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC8( FT_Bytes       table,
                       OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   table_size;
    FT_UInt   FeatMinMaxCount;

    FUNC4( MinCoord );
    FUNC4( MaxCoord );


    FUNC2( "MinMax" );

    FUNC1( 6 );

    FUNC3( MinCoord );
    FUNC3( MaxCoord );
    FeatMinMaxCount = FUNC0( p );

    FUNC6(( " (FeatMinMaxCount = %d)\n", FeatMinMaxCount ));

    table_size = FeatMinMaxCount * 8 + 6;

    FUNC5( MinCoord );
    if ( MinCoord )
      FUNC7( table + MinCoord, otvalid );

    FUNC5( MaxCoord );
    if ( MaxCoord )
      FUNC7( table + MaxCoord, otvalid );

    FUNC1( FeatMinMaxCount * 8 );

    /* FeatMinMaxRecord */
    for ( ; FeatMinMaxCount > 0; FeatMinMaxCount-- )
    {
      p += 4;                           /* skip FeatureTableTag */

      FUNC3( MinCoord );
      FUNC3( MaxCoord );

      FUNC5( MinCoord );
      if ( MinCoord )
        FUNC7( table + MinCoord, otvalid );

      FUNC5( MaxCoord );
      if ( MaxCoord )
        FUNC7( table + MaxCoord, otvalid );
    }

    OTV_EXIT;
  }