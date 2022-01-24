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
struct TYPE_4__ {int litEntropy; int fseEntropy; int /*<<< orphan*/  entropy; void* dictID; } ;
typedef  TYPE_1__ ZSTD_DCtx ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ const ZSTD_DICT_MAGIC ; 
 scalar_t__ FUNC1 (size_t const) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 void* FUNC3 (char const*) ; 
 size_t FUNC4 (TYPE_1__*,void const*,size_t) ; 
 int /*<<< orphan*/  dictionary_corrupted ; 

__attribute__((used)) static size_t FUNC5(ZSTD_DCtx *dctx, const void *dict, size_t dictSize)
{
	if (dictSize < 8)
		return FUNC4(dctx, dict, dictSize);
	{
		U32 const magic = FUNC3(dict);
		if (magic != ZSTD_DICT_MAGIC) {
			return FUNC4(dctx, dict, dictSize); /* pure content mode */
		}
	}
	dctx->dictID = FUNC3((const char *)dict + 4);

	/* load entropy tables */
	{
		size_t const eSize = FUNC2(&dctx->entropy, dict, dictSize);
		if (FUNC1(eSize))
			return FUNC0(dictionary_corrupted);
		dict = (const char *)dict + eSize;
		dictSize -= eSize;
	}
	dctx->litEntropy = dctx->fseEntropy = 1;

	/* reference dictionary content */
	return FUNC4(dctx, dict, dictSize);
}