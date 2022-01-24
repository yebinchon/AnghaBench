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
typedef  scalar_t__ FT_ULong ;
typedef  scalar_t__ FT_UInt ;
typedef  scalar_t__ FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_OFFSET ; 
 int /*<<< orphan*/  GXV_EXIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  wdc_offset_max ; 

__attribute__((used)) static void
  FUNC3( FT_Bytes       table,
                                        FT_Bytes       limit,
                                        GXV_Validator  gxvalid )
  {
    FT_Bytes  p         = table;
    FT_Bytes  wdc_end   = table + FUNC0( wdc_offset_max );
    FT_UInt   i;


    FUNC1( "just justDeltaClusters" );

    if ( limit <= wdc_end )
      FT_INVALID_OFFSET;

    for ( i = 0; p <= wdc_end; i++ )
    {
      FUNC2( p, limit, gxvalid );
      p += gxvalid->subtable_length;
    }

    gxvalid->subtable_length = (FT_ULong)( p - table );

    GXV_EXIT;
  }