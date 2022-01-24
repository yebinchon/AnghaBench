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
struct TYPE_3__ {scalar_t__ compression_algorithm; int /*<<< orphan*/  element_type; int /*<<< orphan*/  forward; } ;
typedef  int /*<<< orphan*/  GorillaDecompressionIterator ;
typedef  TYPE_1__ DecompressionIterator ;
typedef  int /*<<< orphan*/  DecompressResult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ COMPRESSION_ALGORITHM_GORILLA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

DecompressResult
FUNC3(DecompressionIterator *iter_base)
{
	FUNC0(iter_base->compression_algorithm == COMPRESSION_ALGORITHM_GORILLA &&
		   !iter_base->forward);
	return FUNC1(FUNC2(
									 (GorillaDecompressionIterator *) iter_base),
								 iter_base->element_type);
}