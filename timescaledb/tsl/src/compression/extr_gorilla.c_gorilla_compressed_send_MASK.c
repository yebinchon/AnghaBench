#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ compression_algorithm; } ;
struct TYPE_7__ {int /*<<< orphan*/  nulls; TYPE_1__* header; int /*<<< orphan*/  xors; int /*<<< orphan*/  num_bits_used_per_xor; int /*<<< orphan*/  leading_zeros; int /*<<< orphan*/  tag1s; int /*<<< orphan*/  tag0s; } ;
struct TYPE_6__ {scalar_t__ has_nulls; int /*<<< orphan*/  last_value; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  GorillaCompressed ;
typedef  TYPE_2__ CompressedGorillaData ;
typedef  TYPE_3__ CompressedDataHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ COMPRESSION_ALGORITHM_GORILLA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(CompressedDataHeader *header, StringInfo buf)
{
	CompressedGorillaData data;
	const GorillaCompressed *compressed = (GorillaCompressed *) header;
	FUNC0(header->compression_algorithm == COMPRESSION_ALGORITHM_GORILLA);

	FUNC2(&data, compressed);
	FUNC3(buf, data.header->has_nulls);
	FUNC4(buf, data.header->last_value);
	FUNC5(buf, data.tag0s);
	FUNC5(buf, data.tag1s);
	FUNC1(buf, &data.leading_zeros);
	FUNC5(buf, data.num_bits_used_per_xor);
	FUNC1(buf, &data.xors);
	if (data.header->has_nulls)
		FUNC5(buf, data.nulls);
}