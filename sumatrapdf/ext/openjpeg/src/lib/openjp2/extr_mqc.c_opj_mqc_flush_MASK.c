#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* bp; int /*<<< orphan*/  ct; int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ opj_mqc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(opj_mqc_t *mqc)
{
    /* C.2.9 Termination of coding (FLUSH) */
    /* Figure C.11 – FLUSH procedure */
    FUNC1(mqc);
    mqc->c <<= mqc->ct;
    FUNC0(mqc);
    mqc->c <<= mqc->ct;
    FUNC0(mqc);

    /* It is forbidden that a coding pass ends with 0xff */
    if (*mqc->bp != 0xff) {
        /* Advance pointer so that opj_mqc_numbytes() returns a valid value */
        mqc->bp++;
    }
}