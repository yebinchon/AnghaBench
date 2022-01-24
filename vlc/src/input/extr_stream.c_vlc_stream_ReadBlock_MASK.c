#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ (* pf_read ) (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ;TYPE_3__* (* pf_block ) (TYPE_1__*,int*) ;} ;
typedef  TYPE_1__ stream_t ;
struct TYPE_12__ {int eof; int /*<<< orphan*/  offset; TYPE_3__* block; TYPE_3__* peek; } ;
typedef  TYPE_2__ stream_priv_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_13__ {scalar_t__ i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 

block_t *FUNC6(stream_t *s)
{
    stream_priv_t *priv = (stream_priv_t *)s;
    block_t *block;

    if (FUNC5())
    {
        priv->eof = true;
        return NULL;
    }

    if (priv->peek != NULL)
    {
        block = priv->peek;
        priv->peek = NULL;
    }
    else if (priv->block != NULL)
    {
        block = priv->block;
        priv->block = NULL;
    }
    else if (s->pf_block != NULL)
    {
        priv->eof = false;
        block = s->pf_block(s, &priv->eof);
    }
    else
    {
        block = FUNC0(4096);
        if (FUNC4(block == NULL))
            return NULL;

        ssize_t ret = s->pf_read(s, block->p_buffer, block->i_buffer);
        if (ret > 0)
            block->i_buffer = ret;
        else
        {
            FUNC1(block);
            block = NULL;
        }

        priv->eof = !ret;
    }

    if (block != NULL)
        priv->offset += block->i_buffer;

    return block;
}