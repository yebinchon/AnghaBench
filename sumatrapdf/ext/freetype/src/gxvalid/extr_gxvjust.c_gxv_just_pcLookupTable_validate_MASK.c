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
struct TYPE_4__ {int /*<<< orphan*/  lookupval_func; int /*<<< orphan*/  lookupval_sign; } ;
typedef  TYPE_1__* GXV_Validator ;
typedef  int GXV_JUST_DATA ;
typedef  int /*<<< orphan*/  FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  GXV_EXIT ; 
 int /*<<< orphan*/  GXV_LOOKUPVALUE_UNSIGNED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  gxv_just_pcTable_LookupValue_entry_validate ; 

__attribute__((used)) static void
  FUNC2( FT_Bytes       table,
                                   FT_Bytes       limit,
                                   GXV_Validator  gxvalid )
  {
    FT_Bytes  p = table;


    FUNC0( "just pcLookupTable" );
    GXV_JUST_DATA( pc_offset_max ) = 0x0000;
    GXV_JUST_DATA( pc_offset_min ) = 0xFFFFU;

    gxvalid->lookupval_sign = GXV_LOOKUPVALUE_UNSIGNED;
    gxvalid->lookupval_func = gxv_just_pcTable_LookupValue_entry_validate;

    FUNC1( p, limit, gxvalid );

    /* subtable_length is set by gxv_LookupTable_validate() */

    GXV_EXIT;
  }