#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ pos; scalar_t__ size; } ;
typedef  TYPE_1__ ZSTD_outBuffer ;
struct TYPE_8__ {scalar_t__ pos; scalar_t__ size; } ;
typedef  TYPE_2__ ZSTD_inBuffer ;
typedef  int /*<<< orphan*/  ZSTD_CStream ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 size_t FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_e_continue ; 

size_t FUNC2(ZSTD_CStream* zcs, ZSTD_outBuffer* output, ZSTD_inBuffer* input)
{
    /* check conditions */
    if (output->pos > output->size) return FUNC0(GENERIC);
    if (input->pos  > input->size)  return FUNC0(GENERIC);

    return FUNC1(zcs, output, input, ZSTD_e_continue);
}