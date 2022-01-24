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
struct TYPE_6__ {int a; TYPE_1__** curctx; int /*<<< orphan*/  c; } ;
typedef  TYPE_2__ opj_mqc_t ;
struct TYPE_5__ {scalar_t__ qeval; struct TYPE_5__* nmps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC1(opj_mqc_t *mqc)
{
    mqc->a -= (*mqc->curctx)->qeval;
    if ((mqc->a & 0x8000) == 0) {
        if (mqc->a < (*mqc->curctx)->qeval) {
            mqc->a = (*mqc->curctx)->qeval;
        } else {
            mqc->c += (*mqc->curctx)->qeval;
        }
        *mqc->curctx = (*mqc->curctx)->nmps;
        FUNC0(mqc);
    } else {
        mqc->c += (*mqc->curctx)->qeval;
    }
}