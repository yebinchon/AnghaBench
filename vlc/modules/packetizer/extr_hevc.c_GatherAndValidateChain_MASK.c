#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int i_flags; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int BLOCK_FLAG_DROP ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static block_t *FUNC2(block_t *p_outputchain)
{
    block_t *p_output = NULL;

    if(p_outputchain)
    {
        if(p_outputchain->i_flags & BLOCK_FLAG_DROP)
            p_output = p_outputchain; /* Avoid useless gather */
        else
            p_output = FUNC0(p_outputchain);
    }

    if(p_output && (p_output->i_flags & BLOCK_FLAG_DROP))
    {
        FUNC1(p_output); /* Chain! see above */
        p_output = NULL;
    }

    return p_output;
}