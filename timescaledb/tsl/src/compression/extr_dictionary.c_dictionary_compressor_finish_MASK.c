#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64 ;
struct TYPE_10__ {int /*<<< orphan*/  type; } ;
struct TYPE_9__ {int dictionary_size; int num_distinct; int total_size; TYPE_1__* dictionary_compressed_indexes; scalar_t__ is_all_null; } ;
struct TYPE_8__ {int num_elements; } ;
typedef  TYPE_2__ DictionaryCompressorSerializationInfo ;
typedef  TYPE_3__ DictionaryCompressor ;
typedef  void DictionaryCompressed ;

/* Variables and functions */
 TYPE_2__ FUNC0 (TYPE_3__*) ; 
 void* FUNC1 (TYPE_2__,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*) ; 

void *
FUNC3(DictionaryCompressor *compressor)
{
	uint64 average_element_size;
	uint64 expected_array_size;
	DictionaryCompressed *compressed;
	DictionaryCompressorSerializationInfo sizes = FUNC0(compressor);
	if (sizes.is_all_null)
		return NULL;

	/* calculate what the expected size would have be if we recompressed this as
	 * an array, if this is smaller than the current size, recompress as an array.
	 */
	average_element_size = sizes.dictionary_size / sizes.num_distinct;
	expected_array_size = average_element_size * sizes.dictionary_compressed_indexes->num_elements;
	compressed = FUNC1(sizes, compressor->type);
	if (expected_array_size < sizes.total_size)
		return FUNC2(compressed);

	return compressed;
}