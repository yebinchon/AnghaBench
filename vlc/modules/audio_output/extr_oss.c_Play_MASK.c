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
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_8__ {scalar_t__ i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_1__ block_t ;
struct TYPE_9__ {TYPE_3__* sys; } ;
typedef  TYPE_2__ audio_output_t ;
struct TYPE_10__ {int fd; } ;
typedef  TYPE_3__ aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(audio_output_t *aout, block_t *block, vlc_tick_t date)
{
    aout_sys_t *sys = aout->sys;
    int fd = sys->fd;

    while (block->i_buffer > 0)
    {
        ssize_t bytes = FUNC3 (fd, block->p_buffer, block->i_buffer);
        if (bytes >= 0)
        {
            block->p_buffer += bytes;
            block->i_buffer -= bytes;
        }
        else
            FUNC1 (aout, "cannot write samples: %s", FUNC2(errno));
    }
    FUNC0 (block);
    (void) date;
}