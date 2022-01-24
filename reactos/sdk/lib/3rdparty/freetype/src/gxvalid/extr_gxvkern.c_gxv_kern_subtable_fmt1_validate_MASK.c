#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  entry_validate_func; int /*<<< orphan*/  entry_glyphoffset_fmt; int /*<<< orphan*/  subtable_setup_func; int /*<<< orphan*/  optdata_load_func; int /*<<< orphan*/ * optdata; } ;
struct TYPE_6__ {TYPE_1__ statetable; } ;
typedef  int /*<<< orphan*/  GXV_kern_fmt1_StateOptRec ;
typedef  TYPE_2__* GXV_Validator ;
typedef  int /*<<< orphan*/  FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  GXV_EXIT ; 
 int /*<<< orphan*/  GXV_GLYPHOFFSET_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  gxv_kern_subtable_fmt1_entry_validate ; 
 int /*<<< orphan*/  gxv_kern_subtable_fmt1_subtable_setup ; 
 int /*<<< orphan*/  gxv_kern_subtable_fmt1_valueTable_load ; 

__attribute__((used)) static void
  FUNC2( FT_Bytes       table,
                                   FT_Bytes       limit,
                                   GXV_Validator  gxvalid )
  {
    FT_Bytes                   p = table;
    GXV_kern_fmt1_StateOptRec  vt_rec;


    FUNC0( "kern subtable format 1" );

    gxvalid->statetable.optdata =
      &vt_rec;
    gxvalid->statetable.optdata_load_func =
      gxv_kern_subtable_fmt1_valueTable_load;
    gxvalid->statetable.subtable_setup_func =
      gxv_kern_subtable_fmt1_subtable_setup;
    gxvalid->statetable.entry_glyphoffset_fmt =
      GXV_GLYPHOFFSET_NONE;
    gxvalid->statetable.entry_validate_func =
      gxv_kern_subtable_fmt1_entry_validate;

    FUNC1( p, limit, gxvalid );

    GXV_EXIT;
  }