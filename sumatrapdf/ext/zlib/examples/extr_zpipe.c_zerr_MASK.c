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

/* Variables and functions */
#define  Z_DATA_ERROR 132 
#define  Z_ERRNO 131 
#define  Z_MEM_ERROR 130 
#define  Z_STREAM_ERROR 129 
#define  Z_VERSION_ERROR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

void FUNC2(int ret)
{
    FUNC1("zpipe: ", stderr);
    switch (ret) {
    case Z_ERRNO:
        if (FUNC0(stdin))
            FUNC1("error reading stdin\n", stderr);
        if (FUNC0(stdout))
            FUNC1("error writing stdout\n", stderr);
        break;
    case Z_STREAM_ERROR:
        FUNC1("invalid compression level\n", stderr);
        break;
    case Z_DATA_ERROR:
        FUNC1("invalid or incomplete deflate data\n", stderr);
        break;
    case Z_MEM_ERROR:
        FUNC1("out of memory\n", stderr);
        break;
    case Z_VERSION_ERROR:
        FUNC1("zlib version mismatch!\n", stderr);
    }
}