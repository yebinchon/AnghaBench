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
struct TYPE_4__ {scalar_t__ subtable_length; } ;
typedef  TYPE_1__* GXV_Validator ;
typedef  int FT_UShort ;
typedef  scalar_t__ FT_ULong ;
typedef  int /*<<< orphan*/  FT_Fixed ;
typedef  scalar_t__ FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,TYPE_1__*) ; 

__attribute__((used)) static void
  FUNC4( FT_Bytes       table,
                                        FT_Bytes       limit,
                                        GXV_Validator  gxvalid )
  {
    FT_Bytes   p = table;
#ifdef GXV_LOAD_UNUSED_VARS
    FT_Fixed      substThreshhold; /* Apple misspelled "Threshhold" */
#endif
    FT_UShort  addGlyph;
    FT_UShort  substGlyph;


    FUNC2( 4 + 2 + 2 );
#ifdef GXV_LOAD_UNUSED_VARS
    substThreshhold = FT_NEXT_ULONG( p );
#else
    p += 4;
#endif
    addGlyph        = FUNC1( p );
    substGlyph      = FUNC1( p );

    if ( addGlyph != 0xFFFF )
      FUNC3( addGlyph, "type2:addGlyph", gxvalid );

    FUNC3( substGlyph, "type2:substGlyph", gxvalid );

    gxvalid->subtable_length = (FT_ULong)( p - table );
  }