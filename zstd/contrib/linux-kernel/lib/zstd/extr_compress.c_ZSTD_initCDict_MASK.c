#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_parameters ;
typedef  int /*<<< orphan*/  ZSTD_customMem ;
typedef  int /*<<< orphan*/  ZSTD_CDict ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (void const*,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 

ZSTD_CDict *FUNC2(const void *dict, size_t dictSize, ZSTD_parameters params, void *workspace, size_t workspaceSize)
{
	ZSTD_customMem const stackMem = FUNC1(workspace, workspaceSize);
	return FUNC0(dict, dictSize, 1, params, stackMem);
}