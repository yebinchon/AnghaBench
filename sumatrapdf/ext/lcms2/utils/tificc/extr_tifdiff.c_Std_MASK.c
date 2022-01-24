#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int n; int x2; int x; } ;
typedef  TYPE_1__* LPSTAT ;

/* Variables and functions */
 double FUNC0 (int) ; 

__attribute__((used)) static
double FUNC1(LPSTAT st)
{
    return FUNC0((st->n * st->x2 - st->x * st->x) / (st->n*(st->n-1)));
}