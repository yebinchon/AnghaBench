
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int OpusEncoder ;


 int LOGGER_ERROR (char*,int ) ;
 int OPUS_APPLICATION_VOIP ;
 int OPUS_OK ;
 int OPUS_SET_BITRATE (int ) ;
 int OPUS_SET_COMPLEXITY (int) ;
 int OPUS_SET_INBAND_FEC (int) ;
 int OPUS_SET_PACKET_LOSS_PERC (int) ;
 int * opus_encoder_create (int ,int ,int ,int*) ;
 int opus_encoder_ctl (int *,int ) ;
 int opus_encoder_destroy (int *) ;
 int opus_strerror (int) ;

OpusEncoder *create_audio_encoder (int32_t bit_rate, int32_t sampling_rate, int32_t channel_count)
{
    int status = OPUS_OK;
    OpusEncoder *rc = opus_encoder_create(sampling_rate, channel_count, OPUS_APPLICATION_VOIP, &status);

    if (status != OPUS_OK) {
        LOGGER_ERROR("Error while starting audio encoder: %s", opus_strerror(status));
        return ((void*)0);
    }

    status = opus_encoder_ctl(rc, OPUS_SET_BITRATE(bit_rate));

    if (status != OPUS_OK) {
        LOGGER_ERROR("Error while setting encoder ctl: %s", opus_strerror(status));
        goto FAILURE;
    }


    status = opus_encoder_ctl(rc, OPUS_SET_INBAND_FEC(1));

    if (status != OPUS_OK) {
        LOGGER_ERROR("Error while setting encoder ctl: %s", opus_strerror(status));
        goto FAILURE;
    }





    status = opus_encoder_ctl(rc, OPUS_SET_PACKET_LOSS_PERC(10));

    if (status != OPUS_OK) {
        LOGGER_ERROR("Error while setting encoder ctl: %s", opus_strerror(status));
        goto FAILURE;
    }


    status = opus_encoder_ctl(rc, OPUS_SET_COMPLEXITY(10));

    if (status != OPUS_OK) {
        LOGGER_ERROR("Error while setting encoder ctl: %s", opus_strerror(status));
        goto FAILURE;
    }

    return rc;

FAILURE:
    opus_encoder_destroy(rc);
    return ((void*)0);
}
