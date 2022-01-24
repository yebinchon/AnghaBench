#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* p; } ;
typedef  TYPE_2__ spu_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  textlock; scalar_t__ text; int /*<<< orphan*/ * input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(spu_t *spu, input_thread_t *input)
{
    FUNC3(&spu->p->lock);
    if (spu->p->input != input) {
        FUNC2(spu, NULL);

        spu->p->input = input;

        FUNC3(&spu->p->textlock);
        if (spu->p->text)
            FUNC0(spu->p->text);
        spu->p->text = FUNC1(spu);
        FUNC4(&spu->p->textlock);
    }
    FUNC4(&spu->p->lock);
}