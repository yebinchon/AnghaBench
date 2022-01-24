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
struct TYPE_4__ {void* ptr; size_t capacity; size_t size; } ;
typedef  TYPE_1__ buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 size_t UINT_MAX ; 
 size_t FUNC2 (void* const,size_t,void const*,size_t const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (size_t const) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__ FUNC5 (char const*) ; 
 void* FUNC6 (size_t) ; 

__attribute__((used)) static buffer_t
FUNC7(const char* dictionaryName,
                       const void* srcBuffer,
                       const size_t* srcBlockSizes, size_t nbBlocks,
                       size_t requestedDictSize)
{
    if (dictionaryName) {
        FUNC1(3, "loading dictionary %s \n", dictionaryName);
        return FUNC5(dictionaryName);  /* note : result might be kBuffNull */

    } else {

        FUNC1(3, "creating dictionary, of target size %u bytes \n",
                        (unsigned)requestedDictSize);
        void* const dictBuffer = FUNC6(requestedDictSize);
        FUNC0(dictBuffer != NULL);

        FUNC4(nbBlocks <= UINT_MAX);
        size_t const dictSize = FUNC2(dictBuffer, requestedDictSize,
                                                      srcBuffer,
                                                      srcBlockSizes, (unsigned)nbBlocks);
        FUNC0(!FUNC3(dictSize));

        buffer_t result;
        result.ptr = dictBuffer;
        result.capacity = requestedDictSize;
        result.size = dictSize;
        return result;
    }
}