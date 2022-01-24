#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  u; } ;
struct TYPE_7__ {TYPE_1__* face; } ;
struct TYPE_6__ {int /*<<< orphan*/  num_glyphs; } ;
typedef  TYPE_2__* GXV_Validator ;
typedef  TYPE_3__* GXV_LookupValueCPtr ;
typedef  int /*<<< orphan*/  FT_UShort ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_GLYPH_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
  FUNC2( FT_UShort            glyph,
                                                GXV_LookupValueCPtr  value_p,
                                                GXV_Validator        gxvalid )
  {
    FUNC0( glyph ); /* for the non-debugging case */

    FUNC1(( "morx subtable type1 subst.: %d -> %d\n", glyph, value_p->u ));

    if ( value_p->u > gxvalid->face->num_glyphs )
      FT_INVALID_GLYPH_ID;
  }