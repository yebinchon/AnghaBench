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
struct TYPE_3__ {int /*<<< orphan*/  tlm; int /*<<< orphan*/  tm; } ;
typedef  TYPE_1__ pdf_text_object_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,float,float) ; 

void
FUNC1(pdf_text_object_state *tos, float tx, float ty)
{
	tos->tlm = FUNC0(tos->tlm, tx, ty);
	tos->tm = tos->tlm;
}