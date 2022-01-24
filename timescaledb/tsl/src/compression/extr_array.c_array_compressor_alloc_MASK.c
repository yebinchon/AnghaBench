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
struct TYPE_4__ {int has_nulls; int /*<<< orphan*/  serializer; int /*<<< orphan*/  type; int /*<<< orphan*/  data; int /*<<< orphan*/  sizes; int /*<<< orphan*/  nulls; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ArrayCompressor ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

ArrayCompressor *
FUNC4(Oid type_to_compress)
{
	ArrayCompressor *compressor = FUNC2(sizeof(*compressor));
	compressor->has_nulls = false;

	FUNC3(&compressor->nulls);
	FUNC3(&compressor->sizes);
	FUNC0(&compressor->data, CurrentMemoryContext, 0);

	compressor->type = type_to_compress;
	compressor->serializer = FUNC1(type_to_compress);
	return compressor;
}