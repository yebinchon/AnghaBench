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
struct hxxx_helper {int i_nal_length_size; int b_is_xvcC; } ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct hxxx_helper*) ; 
 int FUNC1 (struct hxxx_helper*,void const*,size_t) ; 
 int FUNC2 (void const*) ; 
 int FUNC3 (struct hxxx_helper*,void const*,size_t,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (void const*,size_t) ; 
 scalar_t__ FUNC5 (void const*,size_t) ; 

__attribute__((used)) static int
FUNC6(struct hxxx_helper *hh, const void *p_extra,
                      size_t i_extra)
{
    if (FUNC4(p_extra, i_extra))
    {
        hh->i_nal_length_size = FUNC2(p_extra);
        if (!FUNC0(hh))
            return VLC_EGENERIC;
        hh->b_is_xvcC = true;

        return FUNC1( hh, p_extra, i_extra );
    }
    else if (FUNC5(p_extra, i_extra))
    {
        hh->i_nal_length_size = 4;
        bool unused;
        return i_extra == 0 ? VLC_SUCCESS :
               FUNC3(hh, p_extra, i_extra, 0, &unused);
    }
    else
        return VLC_EGENERIC;
}