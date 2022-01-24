#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int subtable_length; } ;
typedef  TYPE_1__* GXV_Validator ;
typedef  int /*<<< orphan*/  FT_UShort ;
typedef  int FT_ULong ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_DATA ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  GXV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
  FUNC5( FT_Bytes       table,
                           FT_Bytes       limit,
                           GXV_Validator  gxvalid )
  {
    FT_Bytes  p = table;
#ifdef GXV_LOAD_UNUSED_VARS
    FT_ULong  defaultFlags;
#endif
    FT_ULong  chainLength;
    FT_ULong  nFeatureFlags;
    FT_ULong  nSubtables;


    FUNC2( "morx chain header" );

    FUNC1( 4 + 4 + 4 + 4 );
#ifdef GXV_LOAD_UNUSED_VARS
    defaultFlags  = FT_NEXT_ULONG( p );
#else
    p += 4;
#endif
    chainLength   = FUNC0( p );
    nFeatureFlags = FUNC0( p );
    nSubtables    = FUNC0( p );

    /* feature-array of morx is same with that of mort */
    FUNC3( p, limit, nFeatureFlags, gxvalid );
    p += gxvalid->subtable_length;

    if ( nSubtables >= 0x10000L )
      FT_INVALID_DATA;

    FUNC4( p, table + chainLength,
                                 (FT_UShort)nSubtables, gxvalid );

    gxvalid->subtable_length = chainLength;

    /* TODO: defaultFlags should be compared with the flags in tables */

    GXV_EXIT;
  }