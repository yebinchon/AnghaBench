#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_9__ {scalar_t__ i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_2__ block_t ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_3__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSIZE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static block_t *FUNC4 (stream_t *access, bool *restrict eof)
{
#define BUFSIZE (20*188)
    block_t *block = FUNC0 (BUFSIZE);
    if (FUNC3(block == NULL))
        return NULL;

    access_sys_t *sys = access->p_sys;
    ssize_t val = FUNC2 (sys->dev, block->p_buffer, BUFSIZE, -1);

    if (val <= 0)
    {
        if (val == 0)
            *eof = true;
        FUNC1 (block);
        return NULL;
    }

    block->i_buffer = val;

    return block;
}