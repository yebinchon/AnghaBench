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
typedef  scalar_t__ FT_Bytes ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static void
  FUNC4( FT_Bytes       table,
                               FT_Bytes       limit,
                               GXV_Validator  gxvalid )
  {
    FT_Bytes  p = table;
    FT_ULong  count, i;


    FUNC1( 4 );
    count = FUNC0( p );
    for ( i = 0; i < count; i++ )
    {
      FUNC2(( "validating wdc pair %d/%d\n", i + 1, count ));
      FUNC3( p, limit, gxvalid );
      p += gxvalid->subtable_length;
    }

    gxvalid->subtable_length = (FT_ULong)( p - table );
  }