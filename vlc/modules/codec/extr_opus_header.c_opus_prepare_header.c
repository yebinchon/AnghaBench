
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; unsigned int channels; unsigned int nb_streams; unsigned int input_sample_rate; int channel_mapping; scalar_t__ gain; scalar_t__ nb_coupled; } ;
typedef TYPE_1__ OpusHeader ;



void opus_prepare_header(unsigned channels, unsigned rate, OpusHeader *header)
{
    header->version = 1;
    header->channels = channels;
    header->nb_streams = header->channels;
    header->nb_coupled = 0;
    header->input_sample_rate = rate;
    header->gain = 0;
    header->channel_mapping = header->channels > 8 ? 255 :
                              header->channels > 2;
}
