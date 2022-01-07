
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int queue_mutex; int j_buf; int decoder; int encoder; } ;
typedef TYPE_1__ ACSession ;


 int LOGGER_DEBUG (char*,TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int jbuf_free (int ) ;
 int opus_decoder_destroy (int ) ;
 int opus_encoder_destroy (int ) ;
 int pthread_mutex_destroy (int ) ;

void ac_kill(ACSession *ac)
{
    if (!ac)
        return;

    opus_encoder_destroy(ac->encoder);
    opus_decoder_destroy(ac->decoder);
    jbuf_free(ac->j_buf);

    pthread_mutex_destroy(ac->queue_mutex);

    LOGGER_DEBUG("Terminated audio handler: %p", ac);
    free(ac);
}
