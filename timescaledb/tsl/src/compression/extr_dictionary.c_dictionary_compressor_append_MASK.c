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
struct TYPE_6__ {int next_index; int /*<<< orphan*/  nulls; int /*<<< orphan*/  dictionary_indexes; int /*<<< orphan*/  typlen; int /*<<< orphan*/  typbyval; int /*<<< orphan*/  dictionary_items; } ;
struct TYPE_5__ {int index; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ DictionaryHashItem ;
typedef  TYPE_2__ DictionaryCompressor ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

void
FUNC4(DictionaryCompressor *compressor, Datum val)
{
	bool found;
	DictionaryHashItem *dict_item;

	FUNC0(compressor != NULL);

	dict_item = FUNC2(compressor->dictionary_items, val, &found);

	if (!found)
	{
		// per_val->bitmap = roaring_dictionary_create();
		dict_item->index = compressor->next_index;
		dict_item->key = FUNC1(val, compressor->typbyval, compressor->typlen);
		compressor->next_index += 1;
	}

	FUNC3(&compressor->dictionary_indexes, dict_item->index);
	FUNC3(&compressor->nulls, 0);
}