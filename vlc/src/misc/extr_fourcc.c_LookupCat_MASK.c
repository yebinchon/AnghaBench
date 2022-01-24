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
typedef  scalar_t__ vlc_fourcc_t ;

/* Variables and functions */
#define  AUDIO_ES 130 
 scalar_t__ FUNC0 (scalar_t__,char const**) ; 
 scalar_t__ FUNC1 (scalar_t__,char const**) ; 
 scalar_t__ FUNC2 (scalar_t__,char const**) ; 
#define  SPU_ES 129 
#define  VIDEO_ES 128 

__attribute__((used)) static vlc_fourcc_t FUNC3(vlc_fourcc_t fourcc, const char **restrict dsc,
                              int cat)
{
    switch (cat)
    {
        case VIDEO_ES:
            return FUNC2(fourcc, dsc);
        case AUDIO_ES:
            return FUNC0(fourcc, dsc);
        case SPU_ES:
            return FUNC1(fourcc, dsc);
    }

    vlc_fourcc_t ret = FUNC2(fourcc, dsc);
    if (!ret)
        ret = FUNC0(fourcc, dsc);
    if (!ret)
        ret = FUNC1(fourcc, dsc);
    return ret;
}