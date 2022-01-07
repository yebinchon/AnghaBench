
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int rc_target_bitrate; int g_w; int g_h; int kf_max_dist; int kf_mode; scalar_t__ kf_min_dist; scalar_t__ g_lag_in_frames; int g_pass; } ;
typedef TYPE_2__ vpx_codec_enc_cfg_t ;
typedef int uint32_t ;
typedef int toxav_video_receive_frame_cb ;
struct TYPE_9__ {void* second; int * first; } ;
struct TYPE_11__ {int lcfd; int vbuf_raw; int queue_mutex; int decoder; int * av; int friend_number; TYPE_1__ vcb; int linfts; int encoder; } ;
typedef TYPE_3__ VCSession ;
typedef int ToxAV ;


 int LOGGER_ERROR (char*,int ) ;
 int LOGGER_WARNING (char*) ;
 int VIDEO_CODEC_DECODER_INTERFACE ;
 int VIDEO_CODEC_ENCODER_INTERFACE ;
 int VIDEO_DECODE_BUFFER_SIZE ;
 int VP8E_SET_CPUUSED ;
 int VPX_CODEC_OK ;
 int VPX_KF_AUTO ;
 int VPX_RC_ONE_PASS ;
 TYPE_3__* calloc (int,int) ;
 scalar_t__ create_recursive_mutex (int ) ;
 int current_time_monotonic () ;
 int free (TYPE_3__*) ;
 int pthread_mutex_destroy (int ) ;
 int rb_kill (int ) ;
 int rb_new (int ) ;
 int vpx_codec_control (int ,int ,int) ;
 int vpx_codec_dec_init (int ,int ,int *,int ) ;
 int vpx_codec_destroy (int ) ;
 int vpx_codec_enc_config_default (int ,TYPE_2__*,int ) ;
 int vpx_codec_enc_init (int ,int ,TYPE_2__*,int ) ;
 int vpx_codec_err_to_string (int) ;

VCSession *vc_new(ToxAV *av, uint32_t friend_number, toxav_video_receive_frame_cb *cb, void *cb_data)
{
    VCSession *vc = calloc(sizeof(VCSession), 1);

    if (!vc) {
        LOGGER_WARNING("Allocation failed! Application might misbehave!");
        return ((void*)0);
    }

    if (create_recursive_mutex(vc->queue_mutex) != 0) {
        LOGGER_WARNING("Failed to create recursive mutex!");
        free(vc);
        return ((void*)0);
    }

    if (!(vc->vbuf_raw = rb_new(VIDEO_DECODE_BUFFER_SIZE)))
        goto BASE_CLEANUP;

    int rc = vpx_codec_dec_init(vc->decoder, VIDEO_CODEC_DECODER_INTERFACE, ((void*)0), 0);

    if (rc != VPX_CODEC_OK) {
        LOGGER_ERROR("Init video_decoder failed: %s", vpx_codec_err_to_string(rc));
        goto BASE_CLEANUP;
    }



    vpx_codec_enc_cfg_t cfg;
    rc = vpx_codec_enc_config_default(VIDEO_CODEC_ENCODER_INTERFACE, &cfg, 0);

    if (rc != VPX_CODEC_OK) {
        LOGGER_ERROR("Failed to get config: %s", vpx_codec_err_to_string(rc));
        goto BASE_CLEANUP_1;
    }

    cfg.rc_target_bitrate = 500000;
    cfg.g_w = 800;
    cfg.g_h = 600;
    cfg.g_pass = VPX_RC_ONE_PASS;



    cfg.g_lag_in_frames = 0;
    cfg.kf_min_dist = 0;
    cfg.kf_max_dist = 48;
    cfg.kf_mode = VPX_KF_AUTO;

    rc = vpx_codec_enc_init(vc->encoder, VIDEO_CODEC_ENCODER_INTERFACE, &cfg, 0);

    if (rc != VPX_CODEC_OK) {
        LOGGER_ERROR("Failed to initialize encoder: %s", vpx_codec_err_to_string(rc));
        goto BASE_CLEANUP_1;
    }

    rc = vpx_codec_control(vc->encoder, VP8E_SET_CPUUSED, 8);

    if (rc != VPX_CODEC_OK) {
        LOGGER_ERROR("Failed to set encoder control setting: %s", vpx_codec_err_to_string(rc));
        vpx_codec_destroy(vc->encoder);
        goto BASE_CLEANUP_1;
    }

    vc->linfts = current_time_monotonic();
    vc->lcfd = 60;
    vc->vcb.first = cb;
    vc->vcb.second = cb_data;
    vc->friend_number = friend_number;
    vc->av = av;

    return vc;

BASE_CLEANUP_1:
    vpx_codec_destroy(vc->decoder);
BASE_CLEANUP:
    pthread_mutex_destroy(vc->queue_mutex);
    rb_kill(vc->vbuf_raw);
    free(vc);
    return ((void*)0);
}
