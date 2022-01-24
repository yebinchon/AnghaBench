#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nbSamples; size_t* samplesSizes; void* srcBuffer; } ;
typedef  TYPE_1__ sampleInfo ;
struct TYPE_6__ {int nbSamples; size_t const totalSizeToLoad; scalar_t__ oneSampleTooLarge; } ;
typedef  TYPE_2__ fileStats ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long,size_t const) ; 
 size_t NOISELENGTH ; 
 size_t RANDOM_MEMMULT ; 
 int /*<<< orphan*/  SAMPLESIZE_MAX ; 
 size_t const FUNC3 (size_t const) ; 
 TYPE_2__ FUNC4 (char const**,unsigned int,size_t,unsigned int const) ; 
 unsigned int FUNC5 (void* const,size_t*,size_t* const,int,char const**,unsigned int,size_t,unsigned int const) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char const**,unsigned int) ; 

sampleInfo* FUNC8(const char** fileNamesTable, unsigned nbFiles, size_t chunkSize,
                          unsigned maxDictSize, const unsigned displayLevel) {
    fileStats const fs = FUNC4(fileNamesTable, nbFiles, chunkSize, displayLevel);
    size_t* const sampleSizes = (size_t*)FUNC6(fs.nbSamples * sizeof(size_t));
    size_t const memMult = RANDOM_MEMMULT;
    size_t const maxMem =  FUNC3(fs.totalSizeToLoad * memMult) / memMult;
    size_t loadedSize = (size_t) FUNC2 ((unsigned long long)maxMem, fs.totalSizeToLoad);
    void* const srcBuffer = FUNC6(loadedSize+NOISELENGTH);

    /* Checks */
    if ((!sampleSizes) || (!srcBuffer))
        FUNC1(12, "not enough memory for trainFromFiles");   /* should not happen */
    if (fs.oneSampleTooLarge) {
        FUNC0(2, "!  Warning : some sample(s) are very large \n");
        FUNC0(2, "!  Note that dictionary is only useful for small samples. \n");
        FUNC0(2, "!  As a consequence, only the first %u bytes of each sample are loaded \n", SAMPLESIZE_MAX);
    }
    if (fs.nbSamples < 5) {
        FUNC0(2, "!  Warning : nb of samples too low for proper processing ! \n");
        FUNC0(2, "!  Please provide _one file per sample_. \n");
        FUNC0(2, "!  Alternatively, split files into fixed-size blocks representative of samples, with -B# \n");
        FUNC1(14, "nb of samples too low");   /* we now clearly forbid this case */
    }
    if (fs.totalSizeToLoad < (unsigned long long)(8 * maxDictSize)) {
        FUNC0(2, "!  Warning : data size of samples too small for target dictionary size \n");
        FUNC0(2, "!  Samples should be about 100x larger than target dictionary size \n");
    }

    /* init */
    if (loadedSize < fs.totalSizeToLoad)
        FUNC0(1, "Not enough memory; training on %u MB only...\n", (unsigned)(loadedSize >> 20));

    /* Load input buffer */
    FUNC0(3, "Shuffling input files\n");
    FUNC7(fileNamesTable, nbFiles);
    nbFiles = FUNC5(srcBuffer, &loadedSize, sampleSizes, fs.nbSamples,
                        fileNamesTable, nbFiles, chunkSize, displayLevel);

    sampleInfo *info = (sampleInfo *)FUNC6(sizeof(sampleInfo));

    info->nbSamples = fs.nbSamples;
    info->samplesSizes = sampleSizes;
    info->srcBuffer = srcBuffer;

    return info;
}