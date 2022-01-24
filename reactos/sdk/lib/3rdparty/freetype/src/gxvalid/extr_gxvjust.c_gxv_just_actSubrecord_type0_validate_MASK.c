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
typedef  scalar_t__ FT_UShort ;
typedef  scalar_t__ FT_ULong ;
typedef  scalar_t__ FT_UInt ;
typedef  scalar_t__ FT_Fixed ;
typedef  scalar_t__ FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_DATA ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,TYPE_1__*) ; 

__attribute__((used)) static void
  FUNC6( FT_Bytes       table,
                                        FT_Bytes       limit,
                                        GXV_Validator  gxvalid )
  {
    FT_Bytes   p = table;

    FT_Fixed   lowerLimit;
    FT_Fixed   upperLimit;
#ifdef GXV_LOAD_UNUSED_VARS
    FT_UShort  order;
#endif
    FT_UShort  decomposedCount;

    FT_UInt    i;


    FUNC2( 4 + 4 + 2 + 2 );
    lowerLimit      = FUNC0( p );
    upperLimit      = FUNC0( p );
#ifdef GXV_LOAD_UNUSED_VARS
    order           = FT_NEXT_USHORT( p );
#else
    p += 2;
#endif
    decomposedCount = FUNC1( p );

    if ( lowerLimit >= upperLimit )
    {
      FUNC4(( "just table includes invalid range spec:"
                  " lowerLimit(%d) > upperLimit(%d)\n"     ));
      FUNC3( FT_INVALID_DATA );
    }

    for ( i = 0; i < decomposedCount; i++ )
    {
      FT_UShort glyphs;


      FUNC2( 2 );
      glyphs = FUNC1( p );
      FUNC5( glyphs, "type0:glyphs", gxvalid );
    }

    gxvalid->subtable_length = (FT_ULong)( p - table );
  }