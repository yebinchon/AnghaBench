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
 int DeviceTableOffset ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC6( FT_Bytes       table,
                         OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   i, cnt, table_size;

    FUNC3( DeviceTableOffset );


    /* OTV_NAME_ENTER( "MathKern" );*/

    FUNC1( 2 );

    cnt = FUNC0( p );

    FUNC1( 4 * cnt + 2 );
    table_size = 4 + 4 * cnt;

    /* Heights */
    for ( i = 0; i < cnt; i++ )
    {
      p += 2;                                            /* Skip the value */
      FUNC2( DeviceTableOffset );
      FUNC4( DeviceTableOffset );
      if ( DeviceTableOffset )
        FUNC5( table + DeviceTableOffset, otvalid );
    }

    /* One more Kerning value */
    for ( i = 0; i < cnt + 1; i++ )
    {
      p += 2;                                            /* Skip the value */
      FUNC2( DeviceTableOffset );
      FUNC4( DeviceTableOffset );
      if ( DeviceTableOffset )
        FUNC5( table + DeviceTableOffset, otvalid );
    }

    OTV_EXIT;
  }