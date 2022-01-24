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
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  FUNC0 (double,double*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,double*) ; 

int FUNC2(robj *zobj, robj *member, double *xy) {
    double score = 0;

    if (FUNC1(zobj, member->ptr, &score) == C_ERR) return C_ERR;
    if (!FUNC0(score, xy)) return C_ERR;
    return C_OK;
}