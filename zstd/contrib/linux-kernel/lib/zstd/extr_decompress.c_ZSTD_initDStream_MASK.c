#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_customMem ;
struct TYPE_5__ {size_t maxWindowSize; char* inBuff; size_t inBuffSize; char* outBuff; size_t outBuffSize; int /*<<< orphan*/  customMem; scalar_t__ hostageByte; scalar_t__ legacyVersion; int /*<<< orphan*/ * ddictLocal; int /*<<< orphan*/ * ddict; scalar_t__ outEnd; scalar_t__ outStart; scalar_t__ inPos; scalar_t__ lhSize; int /*<<< orphan*/  stage; } ;
typedef  TYPE_1__ ZSTD_DStream ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int WILDCOPY_OVERLENGTH ; 
 int /*<<< orphan*/  ZSTD_BLOCKSIZE_ABSOLUTEMAX ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t) ; 
 scalar_t__ FUNC5 (size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zdss_loadHeader ; 

ZSTD_DStream *FUNC6(size_t maxWindowSize, void *workspace, size_t workspaceSize)
{
	ZSTD_customMem const stackMem = FUNC4(workspace, workspaceSize);
	ZSTD_DStream *zds = FUNC1(stackMem);
	if (!zds) {
		return NULL;
	}

	zds->maxWindowSize = maxWindowSize;
	zds->stage = zdss_loadHeader;
	zds->lhSize = zds->inPos = zds->outStart = zds->outEnd = 0;
	FUNC2(zds->ddictLocal);
	zds->ddictLocal = NULL;
	zds->ddict = zds->ddictLocal;
	zds->legacyVersion = 0;
	zds->hostageByte = 0;

	{
		size_t const blockSize = FUNC0(zds->maxWindowSize, ZSTD_BLOCKSIZE_ABSOLUTEMAX);
		size_t const neededOutSize = zds->maxWindowSize + blockSize + WILDCOPY_OVERLENGTH * 2;

		zds->inBuff = (char *)FUNC5(blockSize, zds->customMem);
		zds->inBuffSize = blockSize;
		zds->outBuff = (char *)FUNC5(neededOutSize, zds->customMem);
		zds->outBuffSize = neededOutSize;
		if (zds->inBuff == NULL || zds->outBuff == NULL) {
			FUNC3(zds);
			return NULL;
		}
	}
	return zds;
}