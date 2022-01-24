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
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_7__ {int paused; size_t stream_offset; size_t buffer_size; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_space; scalar_t__ buffer; int /*<<< orphan*/  wait_data; int /*<<< orphan*/  interrupt; scalar_t__ error; } ;
typedef  TYPE_2__ stream_sys_t ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC6 (void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC9(stream_t *stream, void *buf, size_t buflen)
{
    stream_sys_t *sys = stream->p_sys;
    size_t copy, offset;
    bool eof;

    if (buflen == 0)
        return buflen;

    FUNC7(&sys->lock);
    if (sys->paused)
    {
        FUNC2(stream, "reading while paused (buggy demux?)");
        sys->paused = false;
        FUNC3(&sys->wait_space);
    }

    while ((copy = FUNC0(stream, &eof)) == 0 && !eof)
    {
        void *data[2];

        if (sys->error)
        {
            FUNC8(&sys->lock);
            return 0;
        }

        FUNC5(sys->interrupt, data);
        FUNC4(&sys->wait_data, &sys->lock);
        FUNC6(data);
    }

    offset = sys->stream_offset % sys->buffer_size;
    if (copy > buflen)
        copy = buflen;
    /* Do not step past the sharp edge of the circular buffer */
    if (offset + copy > sys->buffer_size)
        copy = sys->buffer_size - offset;

    FUNC1(buf, sys->buffer + offset, copy);
    sys->stream_offset += copy;
    FUNC3(&sys->wait_space);
    FUNC8(&sys->lock);
    return copy;
}