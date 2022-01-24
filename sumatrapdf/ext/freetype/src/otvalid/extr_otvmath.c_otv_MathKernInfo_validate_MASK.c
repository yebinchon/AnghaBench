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
typedef  int /*<<< orphan*/  FT_Int ;
typedef  scalar_t__ FT_Bytes ;

/* Variables and functions */
 scalar_t__ Coverage ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ MKRecordOffset ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC8( FT_Bytes       table,
                             OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   i, j, cnt, table_size;

    FUNC4( Coverage );
    FUNC4( MKRecordOffset );


    FUNC2( "MathKernInfo" );

    FUNC1( 4 );

    FUNC3( Coverage );
    cnt = FUNC0( p );

    FUNC1( 8 * cnt );
    table_size = 4 + 8 * cnt;

    FUNC5( Coverage );
    FUNC6( table + Coverage, otvalid, (FT_Int)cnt );

    for ( i = 0; i < cnt; i++ )
    {
      for ( j = 0; j < 4; j++ )
      {
        FUNC3( MKRecordOffset );
        FUNC5( MKRecordOffset );
        if ( MKRecordOffset )
          FUNC7( table + MKRecordOffset, otvalid );
      }
    }

    OTV_EXIT;
  }