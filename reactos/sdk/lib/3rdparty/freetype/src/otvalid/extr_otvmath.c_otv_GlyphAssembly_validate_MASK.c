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
 int DeviceTableOffset ; 
 int /*<<< orphan*/  FT_INVALID_GLYPH_ID ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_1__*) ; 

__attribute__((used)) static void
  FUNC6( FT_Bytes       table,
                              OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   pcnt, table_size;
    FT_UInt   i;

    FUNC3( DeviceTableOffset );


    /* OTV_NAME_ENTER( "GlyphAssembly" ); */

    FUNC1( 6 );

    p += 2;                           /* Skip the Italics Correction value */
    FUNC2( DeviceTableOffset );
    pcnt = FUNC0( p );

    FUNC1( 8 * pcnt );
    table_size = 6 + 8 * pcnt;

    FUNC4( DeviceTableOffset );
    if ( DeviceTableOffset )
      FUNC5( table + DeviceTableOffset, otvalid );

    for ( i = 0; i < pcnt; i++ )
    {
      FT_UInt  gid;


      gid = FUNC0( p );
      if ( gid >= otvalid->glyph_count )
        FT_INVALID_GLYPH_ID;
      p += 2*4;             /* skip the Start, End, Full, and Flags fields */
    }

    /* OTV_EXIT; */
  }