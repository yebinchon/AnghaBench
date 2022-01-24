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
typedef  scalar_t__ uint_fast32_t ;
struct vlc_h2_parser {int dummy; } ;
struct vlc_h2_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_H2_FRAME_SIZE_ERROR ; 
 int /*<<< orphan*/  VLC_H2_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct vlc_h2_frame*) ; 
 int FUNC1 (struct vlc_h2_parser*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vlc_h2_parser*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vlc_h2_parser *p,
                                       struct vlc_h2_frame *f, size_t len,
                                       uint_fast32_t id)
{
    FUNC0(f);

    if (id == 0)
        return FUNC1(p, VLC_H2_PROTOCOL_ERROR);

    if (len != 5)
        return FUNC2(p, id, VLC_H2_FRAME_SIZE_ERROR);

    /* Ignore priorities for now as we do not upload much. */
    return 0;
}