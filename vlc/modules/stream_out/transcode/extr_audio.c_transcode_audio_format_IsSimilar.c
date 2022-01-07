
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_rate; scalar_t__ i_physical_channels; } ;
typedef TYPE_1__ audio_format_t ;



__attribute__((used)) static bool transcode_audio_format_IsSimilar( const audio_format_t *a,
                                              const audio_format_t *b )
{
    return
    a->i_rate == b->i_rate &&
    a->i_physical_channels == b->i_physical_channels;
}
