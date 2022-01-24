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
struct TYPE_4__ {int has_nulls; scalar_t__ prev_val; scalar_t__ prev_trailing_zeros; scalar_t__ prev_leading_zeroes; int /*<<< orphan*/  nulls; int /*<<< orphan*/  xors; int /*<<< orphan*/  bits_used_per_xor; int /*<<< orphan*/  leading_zeros; int /*<<< orphan*/  tag1s; int /*<<< orphan*/  tag0s; } ;
typedef  TYPE_1__ GorillaCompressor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

GorillaCompressor *
FUNC3(void)
{
	GorillaCompressor *compressor = FUNC1(sizeof(*compressor));
	FUNC2(&compressor->tag0s);
	FUNC2(&compressor->tag1s);
	FUNC0(&compressor->leading_zeros);
	FUNC2(&compressor->bits_used_per_xor);
	FUNC0(&compressor->xors);
	FUNC2(&compressor->nulls);
	compressor->has_nulls = false;
	compressor->prev_leading_zeroes = 0;
	compressor->prev_trailing_zeros = 0;
	compressor->prev_val = 0;
	return compressor;
}