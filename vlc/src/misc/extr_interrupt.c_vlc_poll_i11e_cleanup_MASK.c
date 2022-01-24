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
struct TYPE_3__ {int* data; } ;
typedef  TYPE_1__ vlc_interrupt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(void *opaque)
{
    vlc_interrupt_t *ctx = opaque;
    int *fd = ctx->data;

    FUNC1(ctx);
    if (fd[1] != fd[0])
        FUNC0(fd[1]);
    FUNC0(fd[0]);
}