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
struct TYPE_4__ {int extra1; scalar_t__ extra2; } ;
typedef  TYPE_1__* OTV_Validator ;
typedef  int FT_UInt ;
typedef  scalar_t__ FT_Bytes ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  OTV_ENTER ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ anchor_offset ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static void
  FUNC7( FT_Bytes       table,
             OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   Count, count1, table_size;


    OTV_ENTER;

    FUNC1( 2 );

    Count = FUNC0( p );

    FUNC5(( " (Count = %d)\n", Count ));

    FUNC1( Count * otvalid->extra1 * 2 );

    table_size = Count * otvalid->extra1 * 2 + 2;

    for ( ; Count > 0; Count-- )
      for ( count1 = otvalid->extra1; count1 > 0; count1-- )
      {
        FUNC3( anchor_offset );


        FUNC2( anchor_offset );

        if ( otvalid->extra2 )
        {
          FUNC4( anchor_offset );
          if ( anchor_offset )
            FUNC6( table + anchor_offset, otvalid );
        }
        else
          FUNC6( table + anchor_offset, otvalid );
      }

    OTV_EXIT;
  }