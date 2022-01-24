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
typedef  int /*<<< orphan*/  ZSTDv06_DCtx ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void const*) ; 
 scalar_t__ const ZSTDv06_DICT_MAGIC ; 
 scalar_t__ FUNC2 (size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  dictionary_corrupted ; 

__attribute__((used)) static size_t FUNC5(ZSTDv06_DCtx* dctx, const void* dict, size_t dictSize)
{
    size_t eSize;
    U32 const magic = FUNC1(dict);
    if (magic != ZSTDv06_DICT_MAGIC) {
        /* pure content mode */
        FUNC4(dctx, dict, dictSize);
        return 0;
    }
    /* load entropy tables */
    dict = (const char*)dict + 4;
    dictSize -= 4;
    eSize = FUNC3(dctx, dict, dictSize);
    if (FUNC2(eSize)) return FUNC0(dictionary_corrupted);

    /* reference dictionary content */
    dict = (const char*)dict + eSize;
    dictSize -= eSize;
    FUNC4(dctx, dict, dictSize);

    return 0;
}