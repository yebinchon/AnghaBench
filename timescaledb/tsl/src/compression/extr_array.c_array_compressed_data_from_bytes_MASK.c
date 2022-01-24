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
struct TYPE_3__ {char const* data; int /*<<< orphan*/  data_len; int /*<<< orphan*/ * sizes; int /*<<< orphan*/ * nulls; int /*<<< orphan*/  element_type; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Simple8bRleSerialized ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ArrayCompressedData ;

/* Variables and functions */
 void* FUNC0 (char const**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ArrayCompressedData
FUNC2(const char *serialized_data, Size data_size, Oid element_type,
								 bool has_nulls)
{
	ArrayCompressedData data = { .element_type = element_type };

	if (has_nulls)
	{
		Simple8bRleSerialized *nulls = FUNC0(&serialized_data);
		data.nulls = nulls;
		data_size -= FUNC1(nulls);
	}

	data.sizes = FUNC0(&serialized_data);
	data_size -= FUNC1(data.sizes);

	data.data = serialized_data;
	data.data_len = data_size;

	return data;
}