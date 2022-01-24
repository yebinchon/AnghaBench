#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/ * pf_seek; int /*<<< orphan*/  pf_read; TYPE_2__* p_sys; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_6__ {int b_fastseek; void* b_seek; void* b_size; } ;
typedef  TYPE_2__ stream_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Read ; 
 int /*<<< orphan*/  STREAM_CAN_FASTSEEK ; 
 int /*<<< orphan*/  STREAM_CAN_SEEK ; 
 int /*<<< orphan*/ * Seek ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_1__*,char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5( vlc_object_t *p_object )
{
    stream_t *p_stream = (stream_t *) p_object;
    stream_sys_t *p_sys = FUNC2(p_object, sizeof (*p_sys));
    if (FUNC0(p_sys == NULL))
        return VLC_ENOMEM;

    uint64_t size;
    bool b;
    bool used = false;

    p_sys->b_seek = FUNC1(p_stream, "seek");
    p_sys->b_size = FUNC1(p_stream, "stream-size");

    if (!p_sys->b_seek)
    {
        if (FUNC3(p_stream->s, STREAM_CAN_SEEK, &b) == 0)
            used = b;

        p_sys->b_fastseek = false;
    }
    else
    {
        p_sys->b_fastseek = FUNC1(p_stream, "fastseek");
        if (!p_sys->b_fastseek
         && FUNC3(p_stream->s, STREAM_CAN_FASTSEEK,
                               &b) == 0)
            used = b;
    }

    if (!p_sys->b_size && FUNC4(p_stream->s, &size) == 0)
        used = true;

    if (!used) /* Nothing to do: skip this filter */
        return VLC_EGENERIC;

    p_stream->p_sys = p_sys;
    p_stream->pf_read = Read;
    p_stream->pf_seek = p_sys->b_seek ? Seek : NULL;
    p_stream->pf_control = Control;

    return VLC_SUCCESS;
}