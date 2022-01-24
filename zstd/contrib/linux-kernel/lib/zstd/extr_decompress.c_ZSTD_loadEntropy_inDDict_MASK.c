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
struct TYPE_3__ {int entropyPresent; int dictSize; char const* dictContent; int /*<<< orphan*/  entropy; void* dictID; } ;
typedef  TYPE_1__ ZSTD_DDict ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ const ZSTD_DICT_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 void* FUNC2 (char const*) ; 
 int /*<<< orphan*/  dictionary_corrupted ; 

__attribute__((used)) static size_t FUNC3(ZSTD_DDict *ddict)
{
	ddict->dictID = 0;
	ddict->entropyPresent = 0;
	if (ddict->dictSize < 8)
		return 0;
	{
		U32 const magic = FUNC2(ddict->dictContent);
		if (magic != ZSTD_DICT_MAGIC)
			return 0; /* pure content mode */
	}
	ddict->dictID = FUNC2((const char *)ddict->dictContent + 4);

	/* load entropy tables */
	FUNC0(FUNC1(&ddict->entropy, ddict->dictContent, ddict->dictSize), dictionary_corrupted);
	ddict->entropyPresent = 1;
	return 0;
}