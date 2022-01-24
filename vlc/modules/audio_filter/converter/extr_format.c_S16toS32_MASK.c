#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  int /*<<< orphan*/  filter_t ;
struct TYPE_8__ {int i_buffer; scalar_t__ p_buffer; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static block_t *FUNC5(filter_t *filter, block_t *bsrc)
{
    block_t *bdst = FUNC1(bsrc->i_buffer * 2);
    if (FUNC4(bdst == NULL))
        goto out;

    FUNC2(bdst, bsrc);
    int16_t *src = (int16_t *)bsrc->p_buffer;
    int32_t *dst = (int32_t *)bdst->p_buffer;
    for (int i = bsrc->i_buffer / 2; i--;)
        *dst++ = *src++ << 16;
out:
    FUNC3(bsrc);
    FUNC0(filter);
    return bdst;
}