#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int has_nulls; int /*<<< orphan*/  num_distinct; int /*<<< orphan*/  element_type; int /*<<< orphan*/  compression_algorithm; int /*<<< orphan*/  vl_len_; } ;
struct TYPE_5__ {int total_size; int /*<<< orphan*/  dictionary_serialization_info; int /*<<< orphan*/  dictionary_size; int /*<<< orphan*/  compressed_nulls; int /*<<< orphan*/  nulls_size; int /*<<< orphan*/  dictionary_compressed_indexes; int /*<<< orphan*/  bitmaps_size; int /*<<< orphan*/  num_distinct; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ DictionaryCompressorSerializationInfo ;
typedef  TYPE_2__ DictionaryCompressed ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COMPRESSION_ALGORITHM_DICTIONARY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static DictionaryCompressed *
FUNC5(DictionaryCompressorSerializationInfo sizes,
											  Oid element_type)
{
	char *data = FUNC4(sizes.total_size);
	DictionaryCompressed *bitmap = (DictionaryCompressed *) data;
	FUNC1(bitmap->vl_len_, sizes.total_size);

	bitmap->compression_algorithm = COMPRESSION_ALGORITHM_DICTIONARY;
	bitmap->element_type = element_type;
	bitmap->has_nulls = sizes.nulls_size > 0 ? 1 : 0;
	bitmap->num_distinct = sizes.num_distinct;

	data = data + sizeof(DictionaryCompressed);
	data = FUNC3(data,
												sizes.bitmaps_size,
												sizes.dictionary_compressed_indexes);

	if (bitmap->has_nulls)
		data = FUNC3(data, sizes.nulls_size, sizes.compressed_nulls);

	data = FUNC2(data,
														sizes.dictionary_size,
														sizes.dictionary_serialization_info);

	FUNC0(data - (char *) bitmap == sizes.total_size);
	return bitmap;
}