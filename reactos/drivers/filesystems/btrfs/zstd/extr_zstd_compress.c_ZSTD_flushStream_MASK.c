#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ pos; scalar_t__ size; } ;
typedef  TYPE_1__ ZSTD_outBuffer ;
struct TYPE_10__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ ZSTD_inBuffer ;
struct TYPE_11__ {size_t outBuffContentSize; size_t outBuffFlushedSize; } ;
typedef  TYPE_3__ ZSTD_CStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_e_flush ; 

size_t FUNC3(ZSTD_CStream* zcs, ZSTD_outBuffer* output)
{
    ZSTD_inBuffer input = { NULL, 0, 0 };
    if (output->pos > output->size) return FUNC1(GENERIC);
    FUNC0( FUNC2(zcs, output, &input, ZSTD_e_flush) );
    return zcs->outBuffContentSize - zcs->outBuffFlushedSize;  /* remaining to flush */
}