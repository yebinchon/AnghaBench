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
 int /*<<< orphan*/  FT_INVALID_FORMAT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int XDeviceTable ; 
 int YDeviceTable ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC8( FT_Bytes       table,
                       OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   AnchorFormat;


    FUNC2( "Anchor");

    FUNC1( 6 );
    AnchorFormat = FUNC0( p );

    FUNC6(( " (format %d)\n", AnchorFormat ));

    p += 4;     /* skip XCoordinate and YCoordinate */

    switch ( AnchorFormat )
    {
    case 1:
      break;

    case 2:
      FUNC1( 2 );  /* AnchorPoint */
      break;

    case 3:
      {
        FT_UInt  table_size;

        FUNC4( XDeviceTable );
        FUNC4( YDeviceTable );


        FUNC1( 4 );
        FUNC3( XDeviceTable );
        FUNC3( YDeviceTable );

        table_size = 6 + 4;

        FUNC5( XDeviceTable );
        if ( XDeviceTable )
          FUNC7( table + XDeviceTable, otvalid );

        FUNC5( YDeviceTable );
        if ( YDeviceTable )
          FUNC7( table + YDeviceTable, otvalid );
      }
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }