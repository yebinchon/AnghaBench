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
struct vlc_h2_parser {TYPE_1__* cbs; } ;
struct vlc_h2_frame {int dummy; } ;
struct TYPE_2__ {int (* stream_reset ) (void*,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLC_H2_FRAME_SIZE_ERROR ; 
 int /*<<< orphan*/  VLC_H2_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_h2_frame*) ; 
 int FUNC2 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_h2_frame*) ; 
 int FUNC4 (struct vlc_h2_parser*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct vlc_h2_parser*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct vlc_h2_parser *p,
                                         struct vlc_h2_frame *f, size_t len,
                                         uint_fast32_t id)
{
    if (id == 0)
    {
        FUNC1(f);
        return FUNC4(p, VLC_H2_PROTOCOL_ERROR);
    }

    if (len != 4)
    {
        FUNC1(f);
        return FUNC4(p, VLC_H2_FRAME_SIZE_ERROR);
    }

    void *s = FUNC5(p, id);
    uint_fast32_t code = FUNC0(FUNC3(f));

    FUNC1(f);

    if (s == NULL)
        return 0;
    return p->cbs->stream_reset(s, code);
}