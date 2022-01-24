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
struct TYPE_3__ {int /*<<< orphan*/  eof; int /*<<< orphan*/ * fifo; } ;
typedef  TYPE_1__ vlc_stream_fifo_t ;
typedef  int /*<<< orphan*/  vlc_fifo_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(vlc_stream_fifo_t *writer, block_t *block)
{
    vlc_fifo_t *fifo = writer->fifo;

    FUNC3(fifo);
    if (FUNC1(!writer->eof))
    {
        FUNC4(fifo, block);
        block = NULL;
    }
    FUNC5(fifo);

    if (FUNC2(block != NULL))
    {
        FUNC0(block);
        errno = EPIPE;
        return -1;
    }
    return 0;
}