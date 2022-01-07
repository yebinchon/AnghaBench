
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int pt; } ;
struct RTPMessage {TYPE_1__ header; } ;
struct TYPE_4__ {void* linfts; int lcfd; int queue_mutex; int vbuf_raw; } ;
typedef TYPE_2__ VCSession ;


 int LOGGER_WARNING (char*) ;
 void* current_time_monotonic () ;
 int free (struct RTPMessage*) ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;
 struct RTPMessage* rb_write (int ,struct RTPMessage*) ;
 int rtp_TypeVideo ;

int vc_queue_message(void *vcp, struct RTPMessage *msg)
{



    if (!vcp || !msg)
        return -1;

    if (msg->header.pt == (rtp_TypeVideo + 2) % 128) {
        LOGGER_WARNING("Got dummy!");
        free(msg);
        return 0;
    }

    if (msg->header.pt != rtp_TypeVideo % 128) {
        LOGGER_WARNING("Invalid payload type!");
        free(msg);
        return -1;
    }

    VCSession *vc = vcp;

    pthread_mutex_lock(vc->queue_mutex);
    free(rb_write(vc->vbuf_raw, msg));
    {

        uint32_t t_lcfd = current_time_monotonic() - vc->linfts;
        vc->lcfd = t_lcfd > 100 ? vc->lcfd : t_lcfd;
        vc->linfts = current_time_monotonic();
    }
    pthread_mutex_unlock(vc->queue_mutex);

    return 0;
}
