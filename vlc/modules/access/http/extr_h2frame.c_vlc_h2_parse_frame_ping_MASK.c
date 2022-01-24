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
typedef  int /*<<< orphan*/  uint64_t ;
struct vlc_h2_parser {int /*<<< orphan*/  opaque; TYPE_1__* cbs; } ;
struct vlc_h2_frame {int dummy; } ;
struct TYPE_2__ {int (* ping ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_H2_FRAME_SIZE_ERROR ; 
 int VLC_H2_PING_ACK ; 
 int /*<<< orphan*/  VLC_H2_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct vlc_h2_frame*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vlc_h2_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_h2_frame*) ; 
 int FUNC5 (struct vlc_h2_parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct vlc_h2_parser *p,
                                   struct vlc_h2_frame *f, size_t len,
                                   uint_fast32_t id)
{
    uint64_t opaque;

    if (id != 0)
    {
        FUNC0(f);
        return FUNC5(p, VLC_H2_PROTOCOL_ERROR);
    }

    if (len != 8)
    {
        FUNC0(f);
        return FUNC5(p, VLC_H2_FRAME_SIZE_ERROR);
    }

    if (FUNC3(f) & VLC_H2_PING_ACK)
    {
        FUNC0(f);
        return 0;
    }

    FUNC1(&opaque, FUNC4(f), 8);
    FUNC0(f);

    return p->cbs->ping(p->opaque, opaque);
}