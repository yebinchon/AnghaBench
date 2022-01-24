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
struct TYPE_3__ {int compressionLevel; unsigned int notificationLevel; unsigned int const dictID; } ;
typedef  TYPE_1__ ZDICT_params_t ;
typedef  unsigned int U64 ;
typedef  unsigned int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int const) ; 
 size_t FUNC2 (size_t,size_t) ; 
 unsigned int FUNC3 (char*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (char*,size_t,int const,void const*,size_t const*,unsigned int,char*,size_t,unsigned int const) ; 
 scalar_t__ FUNC5 (size_t const) ; 
 int /*<<< orphan*/  ZSTD_MAGIC_DICTIONARY ; 
 int g_compressionLevel_default ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 

__attribute__((used)) static size_t FUNC7(
        void* dictBuffer, size_t dictContentSize, size_t dictBufferCapacity,
        const void* samplesBuffer, const size_t* samplesSizes, unsigned nbSamples,
        ZDICT_params_t params)
{
    int const compressionLevel = (params.compressionLevel == 0) ? g_compressionLevel_default : params.compressionLevel;
    U32 const notificationLevel = params.notificationLevel;
    size_t hSize = 8;

    /* calculate entropy tables */
    FUNC0(2, "\r%70s\r", "");   /* clean display line */
    FUNC0(2, "statistics ... \n");
    {   size_t const eSize = FUNC4((char*)dictBuffer+hSize, dictBufferCapacity-hSize,
                                  compressionLevel,
                                  samplesBuffer, samplesSizes, nbSamples,
                                  (char*)dictBuffer + dictBufferCapacity - dictContentSize, dictContentSize,
                                  notificationLevel);
        if (FUNC5(eSize)) return eSize;
        hSize += eSize;
    }

    /* add dictionary header (after entropy tables) */
    FUNC1(dictBuffer, ZSTD_MAGIC_DICTIONARY);
    {   U64 const randomID = FUNC3((char*)dictBuffer + dictBufferCapacity - dictContentSize, dictContentSize, 0);
        U32 const compliantID = (randomID % ((1U<<31)-32768)) + 32768;
        U32 const dictID = params.dictID ? params.dictID : compliantID;
        FUNC1((char*)dictBuffer+4, dictID);
    }

    if (hSize + dictContentSize < dictBufferCapacity)
        FUNC6((char*)dictBuffer + hSize, (char*)dictBuffer + dictBufferCapacity - dictContentSize, dictContentSize);
    return FUNC2(dictBufferCapacity, hSize+dictContentSize);
}