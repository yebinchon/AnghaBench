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
typedef  int int64 ;

/* Variables and functions */
 int BLCKSZ ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GUC_UNIT_BLOCKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int*,int /*<<< orphan*/ ,char const**) ; 

__attribute__((used)) static int64
FUNC6(const char *memory_amount)
{
	const char *hintmsg;
	int nblocks;
	int64 bytes;

	if (NULL == memory_amount)
		FUNC0(ERROR, "invalid memory amount");

	if (!FUNC5(memory_amount, &nblocks, GUC_UNIT_BLOCKS, &hintmsg))
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC4("invalid data amount"),
				 FUNC3("%s", hintmsg)));

	bytes = nblocks;
	bytes *= BLCKSZ;

	return bytes;
}