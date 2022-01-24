#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* nulls; void* xors; void* num_bits_used_per_xor; void* leading_zeros; void* tag1s; void* tag0s; TYPE_2__* header; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int has_nulls; int /*<<< orphan*/  last_value; TYPE_1__ member_0; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_2__ GorillaCompressed ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_3__ CompressedGorillaData ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

Datum
FUNC7(StringInfo buf)
{
	GorillaCompressed header = { 0 };
	CompressedGorillaData data = {
		.header = &header,
	};

	header.has_nulls = FUNC4(buf);
	if (header.has_nulls != 0 && header.has_nulls != 1)
		FUNC3(ERROR, "invalid recv in gorilla: bad bool");

	header.last_value = FUNC5(buf);
	data.tag0s = FUNC6(buf);
	data.tag1s = FUNC6(buf);
	data.leading_zeros = FUNC1(buf);
	data.num_bits_used_per_xor = FUNC6(buf);
	data.xors = FUNC1(buf);

	if (header.has_nulls)
		data.nulls = FUNC6(buf);

	FUNC0(FUNC2(&data));
}