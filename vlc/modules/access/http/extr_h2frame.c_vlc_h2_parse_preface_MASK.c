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
typedef  int /*<<< orphan*/  uint_fast32_t ;
struct vlc_h2_parser {int /*<<< orphan*/  parser; } ;
struct vlc_h2_frame {int dummy; } ;

/* Variables and functions */
 size_t VLC_H2_DEFAULT_MAX_FRAME ; 
 scalar_t__ VLC_H2_FRAME_SETTINGS ; 
 int /*<<< orphan*/  VLC_H2_PROTOCOL_ERROR ; 
 int VLC_H2_SETTINGS_ACK ; 
 int /*<<< orphan*/  FUNC0 (struct vlc_h2_frame*) ; 
 int FUNC1 (struct vlc_h2_frame*) ; 
 scalar_t__ FUNC2 (struct vlc_h2_frame*) ; 
 int FUNC3 (struct vlc_h2_parser*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vlc_h2_parser*,struct vlc_h2_frame*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_h2_parse_generic ; 

__attribute__((used)) static int FUNC5(struct vlc_h2_parser *p,
                                struct vlc_h2_frame *f, size_t len,
                                uint_fast32_t id)
{
    /* The length must be within the specification default limits. */
    if (len > VLC_H2_DEFAULT_MAX_FRAME
    /* The type must SETTINGS. */
     || FUNC2(f) != VLC_H2_FRAME_SETTINGS
    /* The SETTINGS ACK flag must be clear. */
     || (FUNC1(f) & VLC_H2_SETTINGS_ACK))
    {
        FUNC0(f);
        return FUNC3(p, VLC_H2_PROTOCOL_ERROR);
    }

    p->parser = vlc_h2_parse_generic;

    return FUNC4(p, f, len, id);
}