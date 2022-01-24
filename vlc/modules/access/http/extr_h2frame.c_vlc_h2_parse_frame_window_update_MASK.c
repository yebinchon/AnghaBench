#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_fast32_t ;
struct vlc_h2_parser {TYPE_1__* cbs; int /*<<< orphan*/  opaque; } ;
struct vlc_h2_frame {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stream_window_update ) (void*,scalar_t__) ;int /*<<< orphan*/  (* window_update ) (int /*<<< orphan*/ ,scalar_t__) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLC_H2_FRAME_SIZE_ERROR ; 
 int /*<<< orphan*/  VLC_H2_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_h2_frame*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_h2_frame*) ; 
 int FUNC5 (struct vlc_h2_parser*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vlc_h2_parser*,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct vlc_h2_parser*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct vlc_h2_parser *p,
                                            struct vlc_h2_frame *f, size_t len,
                                            uint_fast32_t id)
{
    if (len != 4)
    {
        FUNC1(f);

        if (id == 0)
            return FUNC5(p, VLC_H2_FRAME_SIZE_ERROR);
        return FUNC6(p, id, VLC_H2_FRAME_SIZE_ERROR);
    }

    uint_fast32_t credit = FUNC0(FUNC4(f)) & 0x7fffffffu;

    FUNC1(f);

    if (credit == 0)
    {
        if (id == 0)
            return FUNC5(p, VLC_H2_PROTOCOL_ERROR);
        return FUNC6(p, id, VLC_H2_PROTOCOL_ERROR);
    }

    if (id == 0)
        p->cbs->window_update(p->opaque, credit);
    else
    {
        void *s = FUNC7(p, id);

        if (s != NULL)
            p->cbs->stream_window_update(s, credit);
    }
    return 0;
}