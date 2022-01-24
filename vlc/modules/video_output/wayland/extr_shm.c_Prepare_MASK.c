#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int i_x_offset; int i_y_offset; int /*<<< orphan*/  i_visible_height; int /*<<< orphan*/  i_visible_width; } ;
struct TYPE_17__ {TYPE_5__ fmt; TYPE_7__* sys; } ;
typedef  TYPE_6__ vout_display_t ;
struct TYPE_18__ {int /*<<< orphan*/  active_buffers; int /*<<< orphan*/  display_height; int /*<<< orphan*/  display_width; int /*<<< orphan*/ * viewport; int /*<<< orphan*/  shm; TYPE_3__* embed; } ;
typedef  TYPE_7__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  subpicture_t ;
struct wl_surface {int dummy; } ;
struct wl_shm_pool {int dummy; } ;
struct wl_display {int dummy; } ;
struct wl_buffer {int dummy; } ;
struct picture_buffer_t {int fd; scalar_t__ offset; } ;
struct buffer_data {int /*<<< orphan*/ * counter; TYPE_8__* picture; } ;
struct TYPE_19__ {TYPE_4__* p; struct picture_buffer_t* p_sys; } ;
typedef  TYPE_8__ picture_t ;
typedef  scalar_t__ off_t ;
struct TYPE_15__ {size_t i_pitch; size_t const i_lines; } ;
struct TYPE_13__ {struct wl_surface* wl; } ;
struct TYPE_12__ {struct wl_display* wl; } ;
struct TYPE_14__ {TYPE_2__ handle; TYPE_1__ display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WL_SHM_FORMAT_XRGB8888 ; 
 int /*<<< orphan*/  buffer_cbs ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_data*) ; 
 struct buffer_data* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wl_buffer*,int /*<<< orphan*/ *,struct buffer_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct wl_display*) ; 
 struct wl_shm_pool* FUNC7 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 struct wl_buffer* FUNC8 (struct wl_shm_pool*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wl_shm_pool*) ; 
 int /*<<< orphan*/  FUNC10 (struct wl_surface*,struct wl_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wl_surface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(vout_display_t *vd, picture_t *pic, subpicture_t *subpic,
                    vlc_tick_t date)
{
    FUNC0(date);
    vout_display_sys_t *sys = vd->sys;
    struct wl_display *display = sys->embed->display.wl;
    struct wl_surface *surface = sys->embed->handle.wl;
    struct picture_buffer_t *picbuf = pic->p_sys;

    if (picbuf->fd == -1)
        return;

    struct buffer_data *d = FUNC2(sizeof (*d));
    if (FUNC4(d == NULL))
        return;

    d->picture = pic;
    d->counter = &sys->active_buffers;

    off_t offset = picbuf->offset;
    const size_t stride = pic->p->i_pitch;
    const size_t size = pic->p->i_lines * stride;
    struct wl_shm_pool *pool;
    struct wl_buffer *buf;

    pool = FUNC7(sys->shm, picbuf->fd, offset + size);
    if (pool == NULL)
    {
        FUNC1(d);
        return;
    }

    if (sys->viewport == NULL) /* Poor man's crop */
        offset += 4 * vd->fmt.i_x_offset
                  + pic->p->i_pitch * vd->fmt.i_y_offset;

    buf = FUNC8(pool, offset, vd->fmt.i_visible_width,
                                    vd->fmt.i_visible_height, stride,
                                    WL_SHM_FORMAT_XRGB8888);
    FUNC9(pool);
    if (buf == NULL)
    {
        FUNC1(d);
        return;
    }

    FUNC3(pic);

    FUNC5(buf, &buffer_cbs, d);
    FUNC10(surface, buf, 0, 0);
    FUNC11(surface, 0, 0, sys->display_width, sys->display_height);
    FUNC6(display);

    sys->active_buffers++;

    (void) subpic;
}