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
struct TYPE_2__ {int (* reset ) (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  VLC_H2_FRAME_SIZE_ERROR ; 
 size_t VLC_H2_MAX_FRAME ; 
 int /*<<< orphan*/  VLC_H2_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_h2_frame*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (struct vlc_h2_frame*) ; 
 int FUNC4 (struct vlc_h2_parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vlc_h2_parser *p,
                                     struct vlc_h2_frame *f, size_t len,
                                     uint_fast32_t id)
{
    const uint8_t *ptr = FUNC3(f);

    if (id != 0)
    {
        FUNC1(f);
        return FUNC4(p, VLC_H2_PROTOCOL_ERROR);
    }

    if (len < 8 || len > VLC_H2_MAX_FRAME)
    {
        FUNC1(f);
        return FUNC4(p, VLC_H2_FRAME_SIZE_ERROR);
    }

    uint_fast32_t last_id = FUNC0(ptr) & 0x7FFFFFFF;
    uint_fast32_t code = FUNC0(ptr + 4);

    FUNC1(f);
    return p->cbs->reset(p->opaque, last_id, code);
}