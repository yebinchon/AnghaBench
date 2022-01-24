#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vlc_stream_fifo {int eof; int /*<<< orphan*/ * fifo; } ;
typedef  struct vlc_stream_fifo vlc_stream_fifo_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct vlc_stream_fifo_private {struct vlc_stream_fifo* writer; } ;
struct TYPE_5__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/ * pf_seek; int /*<<< orphan*/  pf_block; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_stream_fifo*) ; 
 struct vlc_stream_fifo* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 struct vlc_stream_fifo_private* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  vlc_stream_fifo_Block ; 
 int /*<<< orphan*/  vlc_stream_fifo_Control ; 
 int /*<<< orphan*/  vlc_stream_fifo_Destroy ; 

vlc_stream_fifo_t *FUNC7(vlc_object_t *parent, stream_t **reader)
{
    struct vlc_stream_fifo *writer = FUNC3(sizeof (*writer));
    if (FUNC4(writer == NULL))
        return NULL;

    writer->fifo = FUNC0();
    if (FUNC4(writer->fifo == NULL)) {
        FUNC2(writer);
        return NULL;
    }
    writer->eof = false;

    struct vlc_stream_fifo_private *sys;
    stream_t *s = FUNC5(parent, vlc_stream_fifo_Destroy,
                                       sizeof (*sys), "stream");
    if (FUNC4(s == NULL)) {
        FUNC1(writer->fifo);
        FUNC2(writer);
        return NULL;
    }

    sys = FUNC6(s);
    sys->writer = writer;
    s->pf_block = vlc_stream_fifo_Block;
    s->pf_seek = NULL;
    s->pf_control = vlc_stream_fifo_Control;
    *reader = s;
    return writer;
}