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
typedef  int uint32_t ;
struct wl_shm_pool {int dummy; } ;
struct wl_buffer {int dummy; } ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_9__ {unsigned int width; int height; int pagemask; int done; int y; int x; int /*<<< orphan*/  display; int /*<<< orphan*/  output; int /*<<< orphan*/  screenshooter; int /*<<< orphan*/  shm; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_10__ {size_t p_buffer; size_t i_buffer; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  WL_SHM_FORMAT_XRGB8888 ; 
 TYPE_3__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wl_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wl_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct wl_shm_pool* FUNC9 (int /*<<< orphan*/ ,int,size_t) ; 
 struct wl_buffer* FUNC10 (struct wl_shm_pool*,int /*<<< orphan*/ ,unsigned int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wl_shm_pool*) ; 

__attribute__((used)) static block_t *FUNC12(demux_t *demux)
{
    demux_sys_t *sys = demux->p_sys;

    int fd = FUNC5();
    if (fd == -1)
    {
        FUNC2(demux, "buffer creation error: %s", FUNC6(errno));
        return NULL;
    }

    /* NOTE: one extra line for overflow if screen-left > 0 */
    uint32_t pitch = 4u * sys->width;
    size_t size = (pitch * (sys->height + 1) + sys->pagemask) & ~sys->pagemask;
    block_t *block = NULL;

    if (FUNC1(fd, size) < 0)
    {
        FUNC2(demux, "buffer allocation error: %s", FUNC6(errno));
        goto out;
    }

    struct wl_shm_pool *pool = FUNC9(sys->shm, fd, size);
    if (pool == NULL)
        goto out;

    struct wl_buffer *buffer;
    buffer = FUNC10(pool, 0, sys->width, sys->height,
                                       pitch, WL_SHM_FORMAT_XRGB8888);
    FUNC11(pool);
    if (buffer == NULL)
        goto out;

    sys->done = false;
    FUNC3(sys->screenshooter, sys->output, buffer);

    while (!sys->done)
        FUNC8(sys->display);

    FUNC7(buffer);
    block = FUNC0(fd, true);

    if (block != NULL)
    {
        size_t skip = (sys->y * sys->width + sys->x) * 4;

        block->p_buffer += skip;
        block->i_buffer -= skip;
    }

out:
    FUNC4(fd);
    return block;
}