
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * audio_encoder; int audio_bitrate; int audio_channels; int audio_sample_rate; } ;
typedef TYPE_1__ Group_AV ;


 int LOGGER_ERROR (char*,int ) ;
 int OPUS_APPLICATION_AUDIO ;
 int OPUS_OK ;
 int OPUS_SET_BITRATE (int ) ;
 int OPUS_SET_COMPLEXITY (int) ;
 int * opus_encoder_create (int ,int ,int ,int*) ;
 int opus_encoder_ctl (int *,int ) ;
 int opus_encoder_destroy (int *) ;
 int opus_strerror (int) ;

__attribute__((used)) static int recreate_encoder(Group_AV *group_av)
{
    if (group_av->audio_encoder) {
        opus_encoder_destroy(group_av->audio_encoder);
        group_av->audio_encoder = ((void*)0);
    }

    int rc = OPUS_OK;
    group_av->audio_encoder = opus_encoder_create(group_av->audio_sample_rate, group_av->audio_channels,
                              OPUS_APPLICATION_AUDIO, &rc);

    if (rc != OPUS_OK) {
        LOGGER_ERROR("Error while starting audio encoder: %s", opus_strerror(rc));
        group_av->audio_encoder = ((void*)0);
        return -1;
    }

    rc = opus_encoder_ctl(group_av->audio_encoder, OPUS_SET_BITRATE(group_av->audio_bitrate));

    if (rc != OPUS_OK) {
        LOGGER_ERROR("Error while setting encoder ctl: %s", opus_strerror(rc));
        opus_encoder_destroy(group_av->audio_encoder);
        group_av->audio_encoder = ((void*)0);
        return -1;
    }

    rc = opus_encoder_ctl(group_av->audio_encoder, OPUS_SET_COMPLEXITY(10));

    if (rc != OPUS_OK) {
        LOGGER_ERROR("Error while setting encoder ctl: %s", opus_strerror(rc));
        opus_encoder_destroy(group_av->audio_encoder);
        group_av->audio_encoder = ((void*)0);
        return -1;
    }

    return 0;
}
