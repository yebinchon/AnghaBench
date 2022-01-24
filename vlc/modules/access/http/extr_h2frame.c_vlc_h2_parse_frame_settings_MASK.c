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
typedef  int /*<<< orphan*/  uint8_t ;
struct vlc_h2_parser {int /*<<< orphan*/  opaque; TYPE_1__* cbs; } ;
struct vlc_h2_frame {int dummy; } ;
struct TYPE_2__ {int (* settings_done ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* setting ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  VLC_H2_FRAME_SIZE_ERROR ; 
 size_t VLC_H2_MAX_FRAME ; 
 int /*<<< orphan*/  VLC_H2_PROTOCOL_ERROR ; 
 int VLC_H2_SETTINGS_ACK ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_h2_frame*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vlc_h2_frame*) ; 
 int /*<<< orphan*/ * FUNC6 (struct vlc_h2_frame*) ; 
 int FUNC7 (struct vlc_h2_parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct vlc_h2_parser *p,
                                       struct vlc_h2_frame *f, size_t len,
                                       uint_fast32_t id)
{
    const uint8_t *ptr = FUNC6(f);

    if (id != 0)
    {
        FUNC2(f);
        return FUNC7(p, VLC_H2_PROTOCOL_ERROR);
    }

    if (len % 6 || len > VLC_H2_MAX_FRAME)
    {
        FUNC2(f);
        return FUNC7(p, VLC_H2_FRAME_SIZE_ERROR);
    }

    if (FUNC5(f) & VLC_H2_SETTINGS_ACK)
    {
        FUNC2(f);
        if (len != 0)
            return FUNC7(p, VLC_H2_FRAME_SIZE_ERROR);
        /* Ignore ACKs for now as we never change settings. */
        return 0;
    }

    for (const uint8_t *end = ptr + len; ptr < end; ptr += 6)
        p->cbs->setting(p->opaque, FUNC1(ptr), FUNC0(ptr + 2));

    FUNC2(f);
    return p->cbs->settings_done(p->opaque);
}