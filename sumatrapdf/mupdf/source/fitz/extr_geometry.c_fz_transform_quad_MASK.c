#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* lr; void* ll; void* ur; void* ul; } ;
typedef  TYPE_1__ fz_quad ;
typedef  int /*<<< orphan*/  fz_matrix ;

/* Variables and functions */
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 

fz_quad
FUNC1(fz_quad q, fz_matrix m)
{
	q.ul = FUNC0(q.ul, m);
	q.ur = FUNC0(q.ur, m);
	q.ll = FUNC0(q.ll, m);
	q.lr = FUNC0(q.lr, m);
	return q;
}