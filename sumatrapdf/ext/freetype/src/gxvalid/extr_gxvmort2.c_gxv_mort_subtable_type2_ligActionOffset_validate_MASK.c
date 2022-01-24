#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  optdata; } ;
struct TYPE_7__ {TYPE_1__ statetable; } ;
struct TYPE_6__ {scalar_t__ ligActionTable; int ligatureTable; int ligatureTable_length; } ;
typedef  TYPE_2__* GXV_mort_subtable_type2_StateOptRecData ;
typedef  TYPE_3__* GXV_Validator ;
typedef  scalar_t__ FT_UShort ;
typedef  int FT_ULong ;
typedef  scalar_t__ FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_OFFSET ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
  FUNC4(
    FT_Bytes       table,
    FT_UShort      ligActionOffset,
    GXV_Validator  gxvalid )
  {
    /* access ligActionTable */
    GXV_mort_subtable_type2_StateOptRecData  optdata =
      (GXV_mort_subtable_type2_StateOptRecData)gxvalid->statetable.optdata;

    FT_Bytes lat_base  = table + optdata->ligActionTable;
    FT_Bytes p         = table + ligActionOffset;
    FT_Bytes lat_limit = lat_base + optdata->ligActionTable;


    FUNC1( ligActionOffset );
    if ( p < lat_base )
    {
      FUNC3(( "too short offset 0x%04x: p < lat_base (%d byte rewind)\n",
                  ligActionOffset, lat_base - p ));

      /* FontValidator, ftxvalidator, ftxdumperfuser warn but continue */
      FUNC2( FT_INVALID_OFFSET );
    }
    else if ( lat_limit < p )
    {
      FUNC3(( "too large offset 0x%04x: lat_limit < p (%d byte overrun)\n",
                  ligActionOffset, p - lat_limit ));

      /* FontValidator, ftxvalidator, ftxdumperfuser warn but continue */
      FUNC2( FT_INVALID_OFFSET );
    }
    else
    {
      /* validate entry in ligActionTable */
      FT_ULong   lig_action;
#ifdef GXV_LOAD_UNUSED_VARS
      FT_UShort  last;
      FT_UShort  store;
#endif
      FT_ULong   offset;


      lig_action = FUNC0( p );
#ifdef GXV_LOAD_UNUSED_VARS
      last   = (FT_UShort)( ( lig_action >> 31 ) & 1 );
      store  = (FT_UShort)( ( lig_action >> 30 ) & 1 );
#endif

      /* Apple spec defines this offset as a word offset */
      offset = lig_action & 0x3FFFFFFFUL;
      if ( offset * 2 < optdata->ligatureTable )
      {
        FUNC3(( "too short offset 0x%08x:"
                    " 2 x offset < ligatureTable (%d byte rewind)\n",
                     offset, optdata->ligatureTable - offset * 2 ));

        FUNC2( FT_INVALID_OFFSET );
      } else if ( offset * 2 >
                  optdata->ligatureTable + optdata->ligatureTable_length )
      {
        FUNC3(( "too long offset 0x%08x:"
                    " 2 x offset > ligatureTable + ligatureTable_length"
                    " (%d byte overrun)\n",
                     offset,
                     optdata->ligatureTable + optdata->ligatureTable_length
                     - offset * 2 ));

        FUNC2( FT_INVALID_OFFSET );
      }
    }
  }