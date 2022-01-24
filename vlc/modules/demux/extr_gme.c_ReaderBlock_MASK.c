#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char* gme_err_t ;
struct TYPE_2__ {int p_buffer; scalar_t__ i_buffer; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int) ; 

__attribute__((used)) static gme_err_t FUNC2 (void *data, void *buf, int length)
{
    block_t *block = data;

    int max = FUNC0 (length, (int)block->i_buffer);
    FUNC1 (buf, block->p_buffer, max);
    block->i_buffer -= max;
    block->p_buffer += max;
    if (max != length)
        return "short read";
    return NULL;
}