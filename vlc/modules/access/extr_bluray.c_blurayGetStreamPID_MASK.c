#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  pl_info_lock; } ;
typedef  TYPE_1__ demux_sys_t ;
struct TYPE_7__ {int pid; } ;
typedef  TYPE_2__ BLURAY_STREAM_INFO ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(demux_sys_t *p_sys, int i_stream_type, uint8_t i_stream_idx)
{
    FUNC1(&p_sys->pl_info_lock);

    BLURAY_STREAM_INFO *p_stream = FUNC0(p_sys,
                                                               i_stream_type,
                                                               i_stream_idx);
    int i_pid = p_stream ? p_stream->pid : -1;

    FUNC2(&p_sys->pl_info_lock);

    return i_pid;
}