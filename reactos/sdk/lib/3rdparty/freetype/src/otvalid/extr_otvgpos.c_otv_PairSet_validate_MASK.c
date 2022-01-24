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
struct TYPE_4__ {int extra3; } ;
typedef  TYPE_1__* OTV_Validator ;
typedef  int FT_UInt ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,TYPE_1__*) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void
  FUNC6( FT_Bytes       table,
                        FT_UInt        format1,
                        FT_UInt        format2,
                        OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   value_len1, value_len2, PairValueCount;


    FUNC2( "PairSet" );

    otvalid->extra3 = table;

    FUNC1( 2 );
    PairValueCount = FUNC0( p );

    FUNC3(( " (PairValueCount = %d)\n", PairValueCount ));

    value_len1 = FUNC5( format1 );
    value_len2 = FUNC5( format2 );

    FUNC1( PairValueCount * ( value_len1 + value_len2 + 2 ) );

    /* PairValueRecord */
    for ( ; PairValueCount > 0; PairValueCount-- )
    {
      p += 2;       /* skip SecondGlyph */

      if ( format1 )
        FUNC4( p, format1, otvalid ); /* Value1 */
      p += value_len1;

      if ( format2 )
        FUNC4( p, format2, otvalid ); /* Value2 */
      p += value_len2;
    }

    OTV_EXIT;
  }