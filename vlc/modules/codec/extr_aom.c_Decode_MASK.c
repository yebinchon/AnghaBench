#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  decoder_t ;
struct TYPE_5__ {int i_flags; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int BLOCK_FLAG_CORRUPTED ; 
 int /*<<< orphan*/  OutputFrame ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int VLCDEC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(decoder_t *dec, block_t *block)
{
    if (block && block->i_flags & (BLOCK_FLAG_CORRUPTED))
    {
        FUNC2(block);
        return VLCDEC_SUCCESS;
    }

    int i_ret = FUNC1(dec, block);

    FUNC0(dec, OutputFrame);

    return i_ret;
}