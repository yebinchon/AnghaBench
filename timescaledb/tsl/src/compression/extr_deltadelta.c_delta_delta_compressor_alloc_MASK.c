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
struct TYPE_4__ {int /*<<< orphan*/  nulls; int /*<<< orphan*/  delta_delta; } ;
typedef  TYPE_1__ DeltaDeltaCompressor ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

DeltaDeltaCompressor *
FUNC2(void)
{
	DeltaDeltaCompressor *compressor = FUNC0(sizeof(*compressor));
	FUNC1(&compressor->delta_delta);
	FUNC1(&compressor->nulls);
	return compressor;
}