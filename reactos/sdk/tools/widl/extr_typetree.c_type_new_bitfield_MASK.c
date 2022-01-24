#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_4__ const* bits; TYPE_3__* field; } ;
struct TYPE_11__ {TYPE_1__ bitfield; } ;
struct TYPE_12__ {TYPE_2__ details; } ;
typedef  TYPE_3__ type_t ;
struct TYPE_13__ {scalar_t__ cval; } ;
typedef  TYPE_4__ expr_t ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_BITFIELD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 

type_t *FUNC3(type_t *field, const expr_t *bits)
{
    type_t *t;

    if (!FUNC1(field))
        FUNC0("bit-field has invalid type\n");

    if (bits->cval < 0)
        FUNC0("negative width for bit-field\n");

    /* FIXME: validate bits->cval <= memsize(field) * 8 */

    t = FUNC2(TYPE_BITFIELD);
    t->details.bitfield.field = field;
    t->details.bitfield.bits = bits;
    return t;
}