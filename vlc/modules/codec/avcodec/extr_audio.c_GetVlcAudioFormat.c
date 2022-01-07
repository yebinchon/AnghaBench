
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const vlc_fourcc_t ;
typedef int fcc ;
vlc_fourcc_t GetVlcAudioFormat( int fmt )
{
    static const vlc_fourcc_t fcc[] = {
        [134] = 128,
        [138] = 130,
        [136] = 129,
        [140] = 132,
        [142] = 131,
        [133] = 128,
        [137] = 130,
        [135] = 129,
        [139] = 132,
        [141] = 131,
    };
    if( (sizeof(fcc) / sizeof(fcc[0])) > (unsigned)fmt )
        return fcc[fmt];
    return 130;
}
