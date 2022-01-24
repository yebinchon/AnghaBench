#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ u; } ;
struct TYPE_8__ {TYPE_1__* root; } ;
struct TYPE_7__ {scalar_t__ limit; scalar_t__ base; } ;
typedef  TYPE_2__* GXV_Validator ;
typedef  TYPE_3__* GXV_LookupValueCPtr ;
typedef  int FT_UShort ;
typedef  int /*<<< orphan*/  FT_Short ;
typedef  scalar_t__ FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  GXV_EXIT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,TYPE_2__*) ; 

__attribute__((used)) static void
  FUNC5( FT_UShort            glyph,
                                 GXV_LookupValueCPtr  value_p,
                                 GXV_Validator        gxvalid )
  {
    FT_Bytes   p     = gxvalid->root->base + value_p->u;
    FT_Bytes   limit = gxvalid->root->limit;
    FT_UShort  count;
    FT_Short   partial;
    FT_UShort  i;


    FUNC3( "element in lookupTable" );

    FUNC2( 2 );
    count = FUNC1( p );

    FUNC2( 2 * count );
    for ( i = 0; i < count; i++ )
    {
      partial = FUNC0( p );
      FUNC4( partial, glyph, gxvalid );
    }

    GXV_EXIT;
  }