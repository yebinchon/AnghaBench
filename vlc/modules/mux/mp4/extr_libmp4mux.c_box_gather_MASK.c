#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* b; } ;
typedef  TYPE_1__ bo_t ;
struct TYPE_11__ {scalar_t__ i_buffer; int /*<<< orphan*/ * p_buffer; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC6 (bo_t *box, bo_t *box2)
{
    if(box2 && box2->b && box && box->b)
    {
        FUNC3(box2, FUNC2( box2 ));
        size_t i_offset = FUNC2( box );
        box->b = FUNC0(box->b, 0, box->b->i_buffer + box2->b->i_buffer);
        if(FUNC4(box->b))
            FUNC5(&box->b->p_buffer[i_offset], box2->b->p_buffer, box2->b->i_buffer);
    }
    FUNC1(box2);
}