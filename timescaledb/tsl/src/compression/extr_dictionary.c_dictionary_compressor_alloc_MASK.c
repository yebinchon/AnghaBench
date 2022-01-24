#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  typalign; int /*<<< orphan*/  typbyval; int /*<<< orphan*/  typlen; } ;
typedef  TYPE_1__ TypeCacheEntry ;
struct TYPE_8__ {int has_nulls; int /*<<< orphan*/  nulls; int /*<<< orphan*/  dictionary_indexes; int /*<<< orphan*/  dictionary_items; int /*<<< orphan*/  typalign; int /*<<< orphan*/  typbyval; int /*<<< orphan*/  typlen; int /*<<< orphan*/  type; scalar_t__ next_index; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ DictionaryCompressor ;

/* Variables and functions */
 int TYPECACHE_EQ_OPR_FINFO ; 
 int TYPECACHE_HASH_PROC_FINFO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

DictionaryCompressor *
FUNC4(Oid type)
{
	DictionaryCompressor *compressor = FUNC2(sizeof(*compressor));
	TypeCacheEntry *tentry =
		FUNC1(type, TYPECACHE_EQ_OPR_FINFO | TYPECACHE_HASH_PROC_FINFO);

	compressor->next_index = 0;
	compressor->has_nulls = false;
	compressor->type = type;
	compressor->typlen = tentry->typlen;
	compressor->typbyval = tentry->typbyval;
	compressor->typalign = tentry->typalign;

	compressor->dictionary_items = FUNC0(tentry);

	FUNC3(&compressor->dictionary_indexes);
	FUNC3(&compressor->nulls);
	return compressor;
}