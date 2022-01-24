#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  optdata; } ;
struct TYPE_9__ {TYPE_2__* face; TYPE_1__ xstatetable; } ;
struct TYPE_8__ {scalar_t__ ligActionTable; } ;
struct TYPE_7__ {scalar_t__ num_glyphs; } ;
typedef  TYPE_3__* GXV_morx_subtable_type2_StateOptRecData ;
typedef  TYPE_4__* GXV_Validator ;
typedef  int FT_UShort ;
typedef  int FT_ULong ;
typedef  scalar_t__ FT_Long ;
typedef  scalar_t__ FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_OFFSET ; 
 int FUNC0 (scalar_t__) ; 
 int GXV_MORX_LIGACTION_ENTRY_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
  FUNC3(
    FT_Bytes       table,
    FT_UShort      ligActionIndex,
    GXV_Validator  gxvalid )
  {
    /* access ligActionTable */
    GXV_morx_subtable_type2_StateOptRecData optdata =
      (GXV_morx_subtable_type2_StateOptRecData)gxvalid->xstatetable.optdata;

    FT_Bytes lat_base  = table + optdata->ligActionTable;
    FT_Bytes p         = lat_base +
                         ligActionIndex * GXV_MORX_LIGACTION_ENTRY_SIZE;
    FT_Bytes lat_limit = lat_base + optdata->ligActionTable;


    if ( p < lat_base )
    {
      FUNC2(( "p < lat_base (%d byte rewind)\n", lat_base - p ));
      FT_INVALID_OFFSET;
    }
    else if ( lat_limit < p )
    {
      FUNC2(( "lat_limit < p (%d byte overrun)\n", p - lat_limit ));
      FT_INVALID_OFFSET;
    }

    {
      /* validate entry in ligActionTable */
      FT_ULong   lig_action;
#ifdef GXV_LOAD_UNUSED_VARS
      FT_UShort  last;
      FT_UShort  store;
#endif
      FT_ULong   offset;
      FT_Long    gid_limit;


      lig_action = FUNC0( p );
#ifdef GXV_LOAD_UNUSED_VARS
      last       = (FT_UShort)( ( lig_action >> 31 ) & 1 );
      store      = (FT_UShort)( ( lig_action >> 30 ) & 1 );
#endif

      offset = lig_action & 0x3FFFFFFFUL;

      /* this offset is 30-bit signed value to add to GID */
      /* it is different from the location offset in mort */
      if ( ( offset & 0x3FFF0000UL ) == 0x3FFF0000UL )
      { /* negative offset */
        gid_limit = gxvalid->face->num_glyphs -
                    (FT_Long)( offset & 0x0000FFFFUL );
        if ( gid_limit > 0 )
          return;

        FUNC2(( "ligature action table includes"
                    " too negative offset moving all GID"
                    " below defined range: 0x%04x\n",
                    offset & 0xFFFFU ));
        FUNC1( FT_INVALID_OFFSET );
      }
      else if ( ( offset & 0x3FFF0000UL ) == 0x00000000UL )
      { /* positive offset */
        if ( (FT_Long)offset < gxvalid->face->num_glyphs )
          return;

        FUNC2(( "ligature action table includes"
                    " too large offset moving all GID"
                    " over defined range: 0x%04x\n",
                    offset & 0xFFFFU ));
        FUNC1( FT_INVALID_OFFSET );
      }

      FUNC2(( "ligature action table includes"
                  " invalid offset to add to 16-bit GID:"
                  " 0x%08x\n", offset ));
      FUNC1( FT_INVALID_OFFSET );
    }
  }