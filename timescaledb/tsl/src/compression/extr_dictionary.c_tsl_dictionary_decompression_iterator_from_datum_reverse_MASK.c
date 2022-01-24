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
struct TYPE_4__ {int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ DictionaryDecompressionIterator ;
typedef  int /*<<< orphan*/  DecompressionIterator ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 

DecompressionIterator *
FUNC3(Datum dictionary_compressed,
														 Oid element_type)
{
	DictionaryDecompressionIterator *iterator = FUNC2(sizeof(*iterator));
	FUNC1(iterator,
										   (void *) FUNC0(dictionary_compressed),
										   false,
										   element_type);
	return &iterator->base;
}