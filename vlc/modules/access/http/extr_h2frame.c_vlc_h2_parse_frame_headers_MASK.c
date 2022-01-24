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
typedef  int uint_fast8_t ;
typedef  scalar_t__ uint_fast32_t ;
typedef  unsigned int uint8_t ;
struct vlc_h2_parser {int dummy; } ;
struct vlc_h2_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_H2_FRAME_SIZE_ERROR ; 
 int VLC_H2_HEADERS_END_HEADERS ; 
 int VLC_H2_HEADERS_END_STREAM ; 
 int VLC_H2_HEADERS_PADDED ; 
 int VLC_H2_HEADERS_PRIORITY ; 
 size_t VLC_H2_MAX_FRAME ; 
 int /*<<< orphan*/  VLC_H2_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct vlc_h2_frame*) ; 
 int FUNC1 (struct vlc_h2_frame*) ; 
 unsigned int* FUNC2 (struct vlc_h2_frame*) ; 
 int FUNC3 (struct vlc_h2_parser*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vlc_h2_parser*,unsigned int const*,size_t) ; 
 int FUNC5 (struct vlc_h2_parser*) ; 
 int /*<<< orphan*/  FUNC6 (struct vlc_h2_parser*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC7(struct vlc_h2_parser *p,
                                      struct vlc_h2_frame *f, size_t len,
                                      uint_fast32_t id)
{
    uint_fast8_t flags = FUNC1(f);
    const uint8_t *ptr = FUNC2(f);

    if (id == 0)
    {
        FUNC0(f);
        return FUNC3(p, VLC_H2_PROTOCOL_ERROR);
    }

    if (len > VLC_H2_MAX_FRAME)
    {
        FUNC0(f);
        return FUNC3(p, VLC_H2_FRAME_SIZE_ERROR);
    }

    if (flags & VLC_H2_HEADERS_PADDED)
    {
        if (len < 1 || len < (1u + ptr[0]))
        {
            FUNC0(f);
            return FUNC3(p, VLC_H2_FRAME_SIZE_ERROR);
        }
        len -= 1 + ptr[0];
        ptr++;
    }

    if (flags & VLC_H2_HEADERS_PRIORITY)
    {   /* Ignore priorities for now as we do not upload anything. */
        if (len < 5)
        {
            FUNC0(f);
            return FUNC3(p, VLC_H2_FRAME_SIZE_ERROR);
        }
        ptr += 5;
        len -= 5;
    }

    FUNC6(p, id, flags & VLC_H2_HEADERS_END_STREAM);

    int ret = FUNC4(p, ptr, len);

    if (ret == 0 && (flags & VLC_H2_HEADERS_END_HEADERS))
        ret = FUNC5(p);

    FUNC0(f);
    return ret;
}