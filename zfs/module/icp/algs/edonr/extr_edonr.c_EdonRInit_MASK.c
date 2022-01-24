#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  DoublePipe; } ;
struct TYPE_11__ {int /*<<< orphan*/  DoublePipe; } ;
struct TYPE_10__ {int /*<<< orphan*/  DoublePipe; } ;
struct TYPE_9__ {int hashbitlen; int /*<<< orphan*/  unprocessed_bits; int /*<<< orphan*/  bits_processed; } ;
typedef  TYPE_1__ EdonRState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_6__* FUNC3 (TYPE_1__*) ; 
 TYPE_4__* FUNC4 (TYPE_1__*) ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  i224p2 ; 
 int /*<<< orphan*/  i256p2 ; 
 int /*<<< orphan*/  i384p2 ; 
 int /*<<< orphan*/  i512p2 ; 

void
FUNC6(EdonRState *state, size_t hashbitlen)
{
	FUNC0(FUNC1(hashbitlen));
	switch (hashbitlen) {
	case 224:
		state->hashbitlen = 224;
		state->bits_processed = 0;
		state->unprocessed_bits = 0;
		FUNC2(i224p2, FUNC3(state)->DoublePipe,
		    16 * sizeof (uint32_t));
		break;

	case 256:
		state->hashbitlen = 256;
		state->bits_processed = 0;
		state->unprocessed_bits = 0;
		FUNC2(i256p2, FUNC4(state)->DoublePipe,
		    16 * sizeof (uint32_t));
		break;

	case 384:
		state->hashbitlen = 384;
		state->bits_processed = 0;
		state->unprocessed_bits = 0;
		FUNC2(i384p2, FUNC5(state)->DoublePipe,
		    16 * sizeof (uint64_t));
		break;

	case 512:
		state->hashbitlen = 512;
		state->bits_processed = 0;
		state->unprocessed_bits = 0;
		FUNC2(i512p2, FUNC3(state)->DoublePipe,
		    16 * sizeof (uint64_t));
		break;
	}
}