
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct Tox {int dummy; } ;
typedef int int16_t ;
struct TYPE_2__ {int group_chat_object; } ;
typedef TYPE_1__ Messenger ;


 int group_send_audio (int ,int,int const*,unsigned int,int ,unsigned int) ;

int toxav_group_send_audio(struct Tox *tox, int groupnumber, const int16_t *pcm, unsigned int samples, uint8_t channels,
                           unsigned int sample_rate)
{
    Messenger *m = (Messenger *)tox;
    return group_send_audio(m->group_chat_object, groupnumber, pcm, samples, channels, sample_rate);
}
