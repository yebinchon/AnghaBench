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
typedef  int /*<<< orphan*/  GXV_Validator ;
typedef  int FT_UShort ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  GXV_EXIT ; 
 int GXV_KERN_SUBTABLE_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC4( FT_Bytes       table,
                                   FT_Bytes       limit,
                                   GXV_Validator  gxvalid )
  {
    FT_Bytes   p = table + GXV_KERN_SUBTABLE_HEADER_SIZE;

    FT_UShort  nPairs;
    FT_UShort  unitSize;


    FUNC1( "kern subtable format 0" );

    unitSize = 2 + 2 + 2;
    nPairs   = 0;

    /* nPairs, searchRange, entrySelector, rangeShift */
    FUNC0( 2 + 2 + 2 + 2 );
    FUNC2( p, limit, &unitSize, &nPairs, gxvalid );
    p += 2 + 2 + 2 + 2;

    FUNC3( p, limit, nPairs, gxvalid );

    GXV_EXIT;
  }