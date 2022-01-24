#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int subtable_length; TYPE_1__* root; } ;
struct TYPE_6__ {int base; } ;
typedef  TYPE_2__* GXV_Validator ;
typedef  int FT_UShort ;
typedef  int FT_ULong ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  GXV_EXIT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  odtect ; 
 int /*<<< orphan*/  trackValueOffset_max ; 
 int /*<<< orphan*/  trackValueOffset_min ; 

__attribute__((used)) static void
  FUNC11( FT_Bytes       table,
                               FT_Bytes       limit,
                               GXV_Validator  gxvalid )
  {
    FT_Bytes   p = table;
    FT_UShort  nTracks;
    FT_UShort  nSizes;
    FT_ULong   sizeTableOffset;

    FUNC4( 4, odtect );


    FUNC5( odtect );
    FUNC3( "trackData" );

    /* read the header of trackData */
    FUNC2( 2 + 2 + 4 );
    nTracks         = FUNC1( p );
    nSizes          = FUNC1( p );
    sizeTableOffset = FUNC0( p );

    FUNC8( table, (FT_ULong)( p - table ),
                          "trackData header", odtect );

    /* validate trackTable */
    FUNC10( p, limit, nTracks, gxvalid );
    FUNC8( p, gxvalid->subtable_length,
                          "trackTable", odtect );

    /* sizeTable is array of FT_Fixed, don't check contents */
    p = gxvalid->root->base + sizeTableOffset;
    FUNC2( nSizes * 4 );
    FUNC8( p, nSizes * 4, "sizeTable", odtect );

    /* validate trackValueOffet */
    p = gxvalid->root->base + FUNC7( trackValueOffset_min );
    if ( limit - p < nTracks * nSizes * 2 )
      FUNC6(( "too short trackValue array\n" ));

    p = gxvalid->root->base + FUNC7( trackValueOffset_max );
    FUNC2( nSizes * 2 );

    FUNC8( gxvalid->root->base
                            + FUNC7( trackValueOffset_min ),
                          FUNC7( trackValueOffset_max )
                            - FUNC7( trackValueOffset_min )
                            + nSizes * 2,
                          "trackValue array", odtect );

    FUNC9( odtect, gxvalid );

    GXV_EXIT;
  }