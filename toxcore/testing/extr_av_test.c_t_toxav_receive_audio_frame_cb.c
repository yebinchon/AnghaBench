
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_5__ {size_t size; int data; } ;
typedef TYPE_1__ frame ;
typedef int ToxAV ;
struct TYPE_6__ {int arb_mutex; int arb; } ;
typedef TYPE_2__ CallControl ;


 int free (int ) ;
 TYPE_1__* malloc (int) ;
 int memcpy (int ,int const*,size_t) ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;
 int rb_write (int ,TYPE_1__*) ;

void t_toxav_receive_audio_frame_cb(ToxAV *av, uint32_t friend_number,
                                    int16_t const *pcm,
                                    size_t sample_count,
                                    uint8_t channels,
                                    uint32_t sampling_rate,
                                    void *user_data)
{
    CallControl *cc = user_data;
    frame *f = malloc(sizeof(uint16_t) + sample_count * sizeof(int16_t) * channels);
    memcpy(f->data, pcm, sample_count * sizeof(int16_t) * channels);
    f->size = sample_count;

    pthread_mutex_lock(cc->arb_mutex);
    free(rb_write(cc->arb, f));
    pthread_mutex_unlock(cc->arb_mutex);
}
