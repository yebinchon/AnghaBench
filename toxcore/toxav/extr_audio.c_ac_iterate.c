
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct RTPMessage {scalar_t__ len; int * data; } ;
typedef int int16_t ;
struct TYPE_5__ {int second; int (* first ) (int ,int ,int *,int,int ,int,int ) ;} ;
struct TYPE_6__ {int lp_sampling_rate; int lp_frame_duration; int queue_mutex; TYPE_1__ acb; int lp_channel_count; int friend_number; int av; int decoder; int j_buf; } ;
typedef TYPE_2__ ACSession ;


 int LOGGER_DEBUG (char*) ;
 int LOGGER_WARNING (char*,...) ;
 int free (struct RTPMessage*) ;
 struct RTPMessage* jbuf_read (int ,int*) ;
 int memcpy (int*,int *,int) ;
 int ntohl (int) ;
 int opus_decode (int ,int *,scalar_t__,int *,int,int) ;
 int opus_packet_get_nb_channels (int *) ;
 int opus_strerror (int) ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;
 int reconfigure_audio_decoder (TYPE_2__*,int,int ) ;
 int stub1 (int ,int ,int *,int,int ,int,int ) ;

void ac_iterate(ACSession *ac)
{
    if (!ac)
        return;




    int16_t tmp[5760 * 2];

    struct RTPMessage *msg;
    int rc = 0;

    pthread_mutex_lock(ac->queue_mutex);

    while ((msg = jbuf_read(ac->j_buf, &rc)) || rc == 2) {
        pthread_mutex_unlock(ac->queue_mutex);

        if (rc == 2) {
            LOGGER_DEBUG("OPUS correction");
            int fs = (ac->lp_sampling_rate * ac->lp_frame_duration) / 1000;
            rc = opus_decode(ac->decoder, ((void*)0), 0, tmp, fs, 1);
        } else {
            memcpy(&ac->lp_sampling_rate, msg->data, 4);
            ac->lp_sampling_rate = ntohl(ac->lp_sampling_rate);

            ac->lp_channel_count = opus_packet_get_nb_channels(msg->data + 4);




            if (!reconfigure_audio_decoder(ac, ac->lp_sampling_rate, ac->lp_channel_count)) {
                LOGGER_WARNING("Failed to reconfigure decoder!");
                free(msg);
                continue;
            }

            rc = opus_decode(ac->decoder, msg->data + 4, msg->len - 4, tmp, 5760, 0);
            free(msg);
        }

        if (rc < 0) {
            LOGGER_WARNING("Decoding error: %s", opus_strerror(rc));
        } else if (ac->acb.first) {
            ac->lp_frame_duration = (rc * 1000) / ac->lp_sampling_rate;

            ac->acb.first(ac->av, ac->friend_number, tmp, rc, ac->lp_channel_count,
                          ac->lp_sampling_rate, ac->acb.second);
        }

        return;
    }

    pthread_mutex_unlock(ac->queue_mutex);
}
