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
typedef  int uint8_t ;
struct hxxx_helper {int i_nal_length_size; int b_is_xvcC; int /*<<< orphan*/  p_obj; int /*<<< orphan*/  b_need_xvcC; } ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int FUNC0 (struct hxxx_helper*,void const*,size_t,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct hxxx_helper*) ; 
 int FUNC3 (struct hxxx_helper*,void const*,size_t) ; 
 scalar_t__ FUNC4 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(struct hxxx_helper *hh, const void *p_extra,
                      size_t i_extra)
{
    if (FUNC1(p_extra, i_extra))
    {
        hh->i_nal_length_size = (((uint8_t*)p_extra)[4] & 0x03) + 1;
        if (!FUNC2(hh))
            return VLC_EGENERIC;
        hh->b_is_xvcC = true;

        /* XXX h264_AVC_to_AnnexB() works only with a i_nal_length_size of 4.
         * If nal_length_size is smaller than 4, fallback to SW decoding. I
         * don't know if it's worth the effort to fix h264_AVC_to_AnnexB() for
         * a smaller nal_length_size. Indeed, this case will happen only with
         * very small resolutions, where hardware decoders are not that useful.
         * -Thomas */
        if (!hh->b_need_xvcC && hh->i_nal_length_size != 4)
        {
            FUNC5(hh->p_obj, "nal_length_size is too small");
            return VLC_EGENERIC;
        }

        return FUNC3(hh, p_extra, i_extra);
    }
    else if (FUNC4(p_extra, i_extra))
    {
        hh->i_nal_length_size = 4;
        bool unused;
        return i_extra == 0 ? VLC_SUCCESS :
               FUNC0(hh, p_extra, i_extra, 0, &unused);
    }
    else
        return VLC_EGENERIC;
}