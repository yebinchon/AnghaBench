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
struct TYPE_9__ {int /*<<< orphan*/  val; scalar_t__ is_null; int /*<<< orphan*/  is_done; } ;
struct TYPE_8__ {int /*<<< orphan*/  element_type; } ;
struct TYPE_7__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ DictionaryDecompressionIterator ;
typedef  TYPE_2__ DictionaryCompressed ;
typedef  TYPE_3__ DecompressResult ;
typedef  int /*<<< orphan*/  ArrayCompressor ;
typedef  int /*<<< orphan*/  ArrayCompressed ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ArrayCompressed *
FUNC6(DictionaryCompressed *compressed)
{
	ArrayCompressor *compressor = FUNC0(compressed->element_type);
	DictionaryDecompressionIterator iterator;
	FUNC4(&iterator,
										   (void *) compressed,
										   true,
										   compressed->element_type);

	for (DecompressResult res = FUNC5(&iterator.base);
		 !res.is_done;
		 res = FUNC5(&iterator.base))
	{
		if (res.is_null)
			FUNC2(compressor);
		else
			FUNC1(compressor, res.val);
	}

	return FUNC3(compressor);
}