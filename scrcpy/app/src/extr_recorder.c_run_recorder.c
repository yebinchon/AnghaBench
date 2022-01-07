
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct recorder {int failed; int mutex; int queue; struct record_packet* previous; scalar_t__ stopped; int queue_cond; } ;
struct TYPE_2__ {int duration; int pts; } ;
struct record_packet {TYPE_1__ packet; } ;


 int LOGD (char*) ;
 int LOGE (char*) ;
 int LOGW (char*) ;
 int cond_wait (int ,int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int next ;
 scalar_t__ queue_is_empty (int *) ;
 int queue_take (int *,int ,struct record_packet**) ;
 int record_packet_delete (struct record_packet*) ;
 int recorder_queue_clear (int *) ;
 int recorder_write (struct recorder*,TYPE_1__*) ;

__attribute__((used)) static int
run_recorder(void *data) {
    struct recorder *recorder = data;

    for (;;) {
        mutex_lock(recorder->mutex);

        while (!recorder->stopped && queue_is_empty(&recorder->queue)) {
            cond_wait(recorder->queue_cond, recorder->mutex);
        }




        if (recorder->stopped && queue_is_empty(&recorder->queue)) {
            mutex_unlock(recorder->mutex);
            struct record_packet *last = recorder->previous;
            if (last) {

                last->packet.duration = 100000;
                bool ok = recorder_write(recorder, &last->packet);
                if (!ok) {



                    LOGW("Could not record last packet");
                }
                record_packet_delete(last);
            }
            break;
        }

        struct record_packet *rec;
        queue_take(&recorder->queue, next, &rec);

        mutex_unlock(recorder->mutex);


        struct record_packet *previous = recorder->previous;
        recorder->previous = rec;

        if (!previous) {

            continue;
        }


        previous->packet.duration = rec->packet.pts - previous->packet.pts;

        bool ok = recorder_write(recorder, &previous->packet);
        record_packet_delete(previous);
        if (!ok) {
            LOGE("Could not record packet");

            mutex_lock(recorder->mutex);
            recorder->failed = 1;

            recorder_queue_clear(&recorder->queue);
            mutex_unlock(recorder->mutex);
            break;
        }

    }

    LOGD("Recorder thread ended");

    return 0;
}
