
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pt; } ;
struct RTPMessage {TYPE_1__ header; } ;
struct TYPE_4__ {int queue_mutex; int j_buf; } ;
typedef TYPE_2__ ACSession ;


 int LOGGER_WARNING (char*) ;
 int free (struct RTPMessage*) ;
 int jbuf_write (int ,struct RTPMessage*) ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;
 int rtp_TypeAudio ;

int ac_queue_message(void *acp, struct RTPMessage *msg)
{
    if (!acp || !msg)
        return -1;

    if ((msg->header.pt & 0x7f) == (rtp_TypeAudio + 2) % 128) {
        LOGGER_WARNING("Got dummy!");
        free(msg);
        return 0;
    }

    if ((msg->header.pt & 0x7f) != rtp_TypeAudio % 128) {
        LOGGER_WARNING("Invalid payload type!");
        free(msg);
        return -1;
    }

    ACSession *ac = acp;

    pthread_mutex_lock(ac->queue_mutex);
    int rc = jbuf_write(ac->j_buf, msg);
    pthread_mutex_unlock(ac->queue_mutex);

    if (rc == -1) {
        LOGGER_WARNING("Could not queue the message!");
        free(msg);
        return -1;
    }

    return 0;
}
