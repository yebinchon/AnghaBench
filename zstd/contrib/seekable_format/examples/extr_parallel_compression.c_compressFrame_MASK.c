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
struct job {size_t dstSize; int done; int /*<<< orphan*/  compressionLevel; int /*<<< orphan*/  srcSize; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; int /*<<< orphan*/  checksum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(void* opaque)
{
    struct job* job = opaque;

    job->checksum = FUNC0(job->src, job->srcSize, 0);

    size_t ret = FUNC1(job->dst, job->dstSize, job->src, job->srcSize, job->compressionLevel);
    if (FUNC3(ret)) {
        FUNC5(stderr, "ZSTD_compress() error : %s \n", FUNC2(ret));
        FUNC4(20);
    }

    job->dstSize = ret;
    job->done = 1;
}