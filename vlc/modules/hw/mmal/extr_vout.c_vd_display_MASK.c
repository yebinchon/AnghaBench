#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_20__ {scalar_t__ i_frame_rate; scalar_t__ i_frame_rate_base; scalar_t__ b_progressive; scalar_t__ b_top_field_first; int next_phase_check; int /*<<< orphan*/  buffer_mutex; int /*<<< orphan*/  buffer_cond; int /*<<< orphan*/  buffers_in_transit; scalar_t__ opaque; scalar_t__ adjust_refresh_rate; TYPE_11__* input; } ;
typedef  TYPE_2__ vout_display_sys_t ;
struct TYPE_18__ {scalar_t__ i_frame_rate; scalar_t__ i_frame_rate_base; } ;
struct TYPE_21__ {scalar_t__ b_progressive; scalar_t__ b_top_field_first; TYPE_16__ format; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ picture_t ;
struct TYPE_22__ {int displayed; TYPE_5__* buffer; } ;
typedef  TYPE_4__ picture_sys_t ;
struct TYPE_23__ {int /*<<< orphan*/  user_data; int /*<<< orphan*/  length; scalar_t__ cmd; } ;
struct TYPE_17__ {int /*<<< orphan*/  buffer_size; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_5__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 scalar_t__ MAX_BUFFERS_IN_TRANSIT ; 
 scalar_t__ MMAL_SUCCESS ; 
 int PHASE_CHECK_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_11__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  subpicture ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(vout_display_t *vd, picture_t *picture)
{
    vout_display_sys_t *sys = vd->sys;
    picture_sys_t *pic_sys = picture->p_sys;
    MMAL_BUFFER_HEADER_T *buffer = pic_sys->buffer;
    MMAL_STATUS_T status;

    if (picture->format.i_frame_rate != sys->i_frame_rate ||
        picture->format.i_frame_rate_base != sys->i_frame_rate_base ||
        picture->b_progressive != sys->b_progressive ||
        picture->b_top_field_first != sys->b_top_field_first) {
        sys->b_top_field_first = picture->b_top_field_first;
        sys->b_progressive = picture->b_progressive;
        sys->i_frame_rate = picture->format.i_frame_rate;
        sys->i_frame_rate_base = picture->format.i_frame_rate_base;
        FUNC2(vd, NULL, &picture->format);
    }

    if (!pic_sys->displayed || !sys->opaque) {
        buffer->cmd = 0;
        buffer->length = sys->input->buffer_size;
        buffer->user_data = FUNC7(picture);

        status = FUNC5(sys->input, buffer);
        if (status == MMAL_SUCCESS)
            FUNC0(&sys->buffers_in_transit, 1);

        if (status != MMAL_SUCCESS) {
            FUNC6(vd, "Failed to send buffer to input port. Frame dropped");
            FUNC8(picture);
        }

        pic_sys->displayed = true;
    }

    FUNC3(vd, subpicture);

    if (sys->next_phase_check == 0 && sys->adjust_refresh_rate)
        FUNC4(vd);
    sys->next_phase_check = (sys->next_phase_check + 1) % PHASE_CHECK_INTERVAL;

    if (sys->opaque) {
        FUNC10(&sys->buffer_mutex);
        while (FUNC1(&sys->buffers_in_transit) >= MAX_BUFFERS_IN_TRANSIT)
            FUNC9(&sys->buffer_cond, &sys->buffer_mutex);
        FUNC11(&sys->buffer_mutex);
    }
}