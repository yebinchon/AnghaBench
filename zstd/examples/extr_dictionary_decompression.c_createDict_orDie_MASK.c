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
typedef  int /*<<< orphan*/  ZSTD_DDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (void* const,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void* const) ; 
 void* FUNC3 (char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static ZSTD_DDict* FUNC5(const char* dictFileName)
{
    size_t dictSize;
    FUNC4("loading dictionary %s \n", dictFileName);
    void* const dictBuffer = FUNC3(dictFileName, &dictSize);
    ZSTD_DDict* const ddict = FUNC1(dictBuffer, dictSize);
    FUNC0(ddict != NULL, "ZSTD_createDDict() failed!");
    FUNC2(dictBuffer);
    return ddict;
}