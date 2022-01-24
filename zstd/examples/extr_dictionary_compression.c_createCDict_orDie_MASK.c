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
typedef  int /*<<< orphan*/  ZSTD_CDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (void* const,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (void* const) ; 
 void* FUNC3 (char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static ZSTD_CDict* FUNC5(const char* dictFileName, int cLevel)
{
    size_t dictSize;
    FUNC4("loading dictionary %s \n", dictFileName);
    void* const dictBuffer = FUNC3(dictFileName, &dictSize);
    ZSTD_CDict* const cdict = FUNC1(dictBuffer, dictSize, cLevel);
    FUNC0(cdict != NULL, "ZSTD_createCDict() failed!");
    FUNC2(dictBuffer);
    return cdict;
}