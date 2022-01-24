#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  compressed_data_storage; } ;
typedef  int /*<<< orphan*/  CompressionStorage ;
typedef  size_t CompressionAlgorithms ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 size_t _END_COMPRESSION_ALGORITHMS ; 
 size_t _INVALID_COMPRESSION_ALGORITHM ; 
 TYPE_1__* definitions ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 

extern CompressionStorage
FUNC1(CompressionAlgorithms algorithm)
{
	if (algorithm == _INVALID_COMPRESSION_ALGORITHM || algorithm >= _END_COMPRESSION_ALGORITHMS)
		FUNC0(ERROR, "invalid compression algorithm %d", algorithm);
	return definitions[algorithm].compressed_data_storage;
}