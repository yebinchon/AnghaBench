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
typedef  int /*<<< orphan*/  uint_fast32_t ;
struct TYPE_2__ {scalar_t__ sid; } ;
struct vlc_h2_parser {TYPE_1__ headers; } ;
struct vlc_h2_frame {int dummy; } ;

/* Variables and functions */
 scalar_t__ VLC_H2_FRAME_CONTINUATION ; 
 int /*<<< orphan*/  VLC_H2_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_h2_frame*) ; 
 scalar_t__ FUNC2 (struct vlc_h2_frame*) ; 
 int FUNC3 (struct vlc_h2_parser*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vlc_h2_parser*,struct vlc_h2_frame*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vlc_h2_parser *p,
                                      struct vlc_h2_frame *f, size_t len,
                                      uint_fast32_t id)
{
    FUNC0(p->headers.sid != 0);

    /* After a HEADER, PUSH_PROMISE of CONTINUATION frame without the
     * END_HEADERS flag, must come a CONTINUATION frame. */
    if (FUNC2(f) != VLC_H2_FRAME_CONTINUATION)
    {
        FUNC1(f);
        return FUNC3(p, VLC_H2_PROTOCOL_ERROR);
    }

    return FUNC4(p, f, len, id);
}