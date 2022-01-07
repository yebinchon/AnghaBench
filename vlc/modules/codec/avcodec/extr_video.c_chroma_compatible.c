
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_fourcc_t ;


 size_t ARRAY_SIZE (scalar_t__ const**) ;
__attribute__((used)) static bool chroma_compatible(vlc_fourcc_t a, vlc_fourcc_t b)
{
    static const vlc_fourcc_t compat_lists[][2] = {
        {131, 135},
        {130, 134},
        {129, 133},
        {128, 132},
    };

    if (a == b)
        return 1;

    for (size_t i = 0; i < ARRAY_SIZE(compat_lists); i++) {
        if ((a == compat_lists[i][0] || a == compat_lists[i][1]) &&
            (b == compat_lists[i][0] || b == compat_lists[i][1]))
            return 1;
    }
    return 0;
}
