#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_fifo_t ;
struct vlc_stream_fifo {int eof; int /*<<< orphan*/ * fifo; } ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_stream_fifo*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct vlc_stream_fifo* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(stream_t *s)
{
    struct vlc_stream_fifo *writer = FUNC6(s);
    vlc_fifo_t *fifo = writer->fifo;
    block_t *block;
    bool closed;

    FUNC4(fifo);
    block = FUNC3(fifo);
    closed = writer->eof;
    writer->eof = true;
    FUNC5(fifo);

    FUNC0(block);

    if (closed) {
        /* Destroy shared state if write end is already closed */
        FUNC1(fifo);
        FUNC2(writer);
    }
}