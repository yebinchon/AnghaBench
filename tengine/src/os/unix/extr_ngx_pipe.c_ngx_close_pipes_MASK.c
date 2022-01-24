#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_3__ {scalar_t__ generation; int /*<<< orphan*/  configured; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t ngx_last_pipe ; 
 scalar_t__ ngx_pipe_generation ; 
 TYPE_1__* ngx_pipes ; 

void
FUNC1(void)
{
    ngx_uint_t i, last;

    for (i = 0, last = -1; i < ngx_last_pipe; i++) {

        if (!ngx_pipes[i].configured) {
            continue;
        }

        if (ngx_pipes[i].generation == ngx_pipe_generation) {
            FUNC0(&ngx_pipes[i]);
        } else {
            last = i;
        }
    }

    ngx_last_pipe = last + 1;
}