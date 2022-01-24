#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_8__ {struct TYPE_8__* b_next; } ;
typedef  TYPE_2__ arc_buf_t ;
struct TYPE_7__ {scalar_t__ b_state; TYPE_2__* b_buf; } ;
struct TYPE_9__ {TYPE_1__ b_l1hdr; } ;
typedef  TYPE_3__ arc_buf_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ arc_anon ; 

__attribute__((used)) static boolean_t
FUNC3(arc_buf_hdr_t *hdr)
{
	FUNC1(hdr->b_l1hdr.b_state == arc_anon || FUNC2(hdr));

	for (arc_buf_t *b = hdr->b_l1hdr.b_buf; b != NULL; b = b->b_next) {
		if (!FUNC0(b)) {
			return (B_TRUE);
		}
	}
	return (B_FALSE);
}