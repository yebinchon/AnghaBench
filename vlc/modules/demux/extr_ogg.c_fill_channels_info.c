
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pi_channels_map ;
struct TYPE_3__ {unsigned int i_channels; int i_physical_channels; } ;
typedef TYPE_1__ audio_format_t ;
__attribute__((used)) static void fill_channels_info(audio_format_t *audio)
{
    static const int pi_channels_map[9] =
    {
        0,
        136,
        135 | 128,
        136 | 135 | 128,
        135 | 128 | 130
            | 129,
        135 | 128 | 136
            | 130 | 129,
        135 | 128 | 136
            | 130 | 129 | 134,
        135 | 128 | 136
            | 131 | 133
            | 132 | 134,
        135 | 128 | 136 | 130
            | 129 | 133 | 132
            | 134,
    };

    unsigned chans = audio->i_channels;
    if (chans < sizeof(pi_channels_map) / sizeof(pi_channels_map[0]))
        audio->i_physical_channels = pi_channels_map[chans];
}
