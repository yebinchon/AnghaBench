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
struct TYPE_6__ {void* ligatureTable; void* componentTable; void* ligActionTable; } ;
typedef  TYPE_2__* GXV_mort_subtable_type2_StateOptRecData ;
typedef  TYPE_3__* GXV_Validator ;
typedef  int /*<<< orphan*/  FT_Bytes ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
  FUNC3( FT_Bytes       table,
                                         FT_Bytes       limit,
                                         GXV_Validator  gxvalid )
  {
    FT_Bytes  p = table;
    GXV_mort_subtable_type2_StateOptRecData  optdata =
      (GXV_mort_subtable_type2_StateOptRecData)gxvalid->statetable.optdata;


    FUNC1( 2 + 2 + 2 );
    optdata->ligActionTable = FUNC0( p );
    optdata->componentTable = FUNC0( p );
    optdata->ligatureTable  = FUNC0( p );

    FUNC2(( "offset to ligActionTable=0x%04x\n",
                optdata->ligActionTable ));
    FUNC2(( "offset to componentTable=0x%04x\n",
                optdata->componentTable ));
    FUNC2(( "offset to ligatureTable=0x%04x\n",
                optdata->ligatureTable ));
  }