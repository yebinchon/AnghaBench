
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * stride; scalar_t__* planes; int d_h; int d_w; } ;
typedef TYPE_2__ vpx_image_t ;
typedef int * vpx_codec_iter_t ;
typedef int uint8_t ;
struct RTPMessage {int len; int data; } ;
struct TYPE_7__ {int second; int (* first ) (int ,int ,int ,int ,int const*,int const*,int const*,int ,int ,int ,int ) ;} ;
struct TYPE_9__ {int queue_mutex; TYPE_1__ vcb; int friend_number; int av; int decoder; int vbuf_raw; } ;
typedef TYPE_3__ VCSession ;


 int LOGGER_ERROR (char*,int ) ;
 int MAX_DECODE_TIME_US ;
 int VPX_CODEC_OK ;
 int free (struct RTPMessage*) ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;
 scalar_t__ rb_read (int ,void**) ;
 int stub1 (int ,int ,int ,int ,int const*,int const*,int const*,int ,int ,int ,int ) ;
 int vpx_codec_decode (int ,int ,int ,int *,int ) ;
 int vpx_codec_err_to_string (int) ;
 TYPE_2__* vpx_codec_get_frame (int ,int **) ;
 int vpx_img_free (TYPE_2__*) ;

void vc_iterate(VCSession *vc)
{
    if (!vc)
        return;

    struct RTPMessage *p;
    int rc;

    pthread_mutex_lock(vc->queue_mutex);

    if (rb_read(vc->vbuf_raw, (void **)&p)) {
        pthread_mutex_unlock(vc->queue_mutex);

        rc = vpx_codec_decode(vc->decoder, p->data, p->len, ((void*)0), MAX_DECODE_TIME_US);
        free(p);

        if (rc != VPX_CODEC_OK)
            LOGGER_ERROR("Error decoding video: %s", vpx_codec_err_to_string(rc));
        else {
            vpx_codec_iter_t iter = ((void*)0);
            vpx_image_t *dest = vpx_codec_get_frame(vc->decoder, &iter);


            for (; dest; dest = vpx_codec_get_frame(vc->decoder, &iter)) {
                if (vc->vcb.first)
                    vc->vcb.first(vc->av, vc->friend_number, dest->d_w, dest->d_h,
                                  (const uint8_t *)dest->planes[0], (const uint8_t *)dest->planes[1], (const uint8_t *)dest->planes[2],
                                  dest->stride[0], dest->stride[1], dest->stride[2], vc->vcb.second);

                vpx_img_free(dest);
            }
        }

        return;
    }

    pthread_mutex_unlock(vc->queue_mutex);
}
