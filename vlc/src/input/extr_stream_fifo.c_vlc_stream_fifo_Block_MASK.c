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
struct vlc_stream_fifo {scalar_t__ eof; int /*<<< orphan*/ * fifo; } ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct vlc_stream_fifo* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static block_t *FUNC6(stream_t *s, bool *restrict eof)
{
    struct vlc_stream_fifo *sys = FUNC5(s);
    vlc_fifo_t *fifo = sys->fifo;
    block_t *block;

    FUNC2(fifo);
    while (FUNC1(fifo))
    {
        if (sys->eof)
        {
            *eof = true;
            break;
        }
        FUNC4(fifo);
    }

    block = FUNC0(fifo);
    FUNC3(fifo);
    return block;
}