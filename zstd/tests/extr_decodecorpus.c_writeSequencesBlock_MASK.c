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
typedef  int /*<<< orphan*/  seqStore_t ;
typedef  int /*<<< orphan*/  frame_t ;
typedef  int /*<<< orphan*/  dictInfo ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static size_t FUNC4(U32* seed, frame_t* frame, size_t contentSize,
                                  size_t literalsSize, dictInfo info)
{
    seqStore_t seqStore;
    size_t numSequences;


    FUNC2(&seqStore);

    /* randomly generate sequences */
    numSequences = FUNC1(seed, frame, &seqStore, contentSize, literalsSize, info);
    /* write them out to the frame data */
    FUNC0(FUNC3(seed, frame, &seqStore, numSequences));

    return numSequences;
}