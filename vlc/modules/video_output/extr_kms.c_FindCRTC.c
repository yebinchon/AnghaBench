
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_14__ {scalar_t__ crtc; int drm_fd; } ;
typedef TYPE_2__ vout_display_sys_t ;
struct TYPE_15__ {int count_crtcs; scalar_t__* crtcs; } ;
typedef TYPE_3__ drmModeRes ;
struct TYPE_16__ {int possible_crtcs; scalar_t__ crtc_id; } ;
typedef TYPE_4__ drmModeEncoder ;
struct TYPE_17__ {int count_encoders; int connector_id; int * encoders; int encoder_id; } ;
typedef TYPE_5__ drmModeConnector ;
typedef int deviceRval ;


 int drmModeFreeEncoder (TYPE_4__*) ;
 TYPE_4__* drmModeGetEncoder (int ,int ) ;
 int drvSuccess ;
 int drvTryNext ;
 int ffs (int ) ;
 int msg_Dbg (TYPE_1__*,char*,scalar_t__) ;
 int msg_Err (TYPE_1__*,char*,int ) ;

__attribute__((used)) static deviceRval FindCRTC(vout_display_t *vd, drmModeRes const *res,
                             drmModeConnector const *conn)
{
    vout_display_sys_t *sys = vd->sys;
    drmModeEncoder *enc;
    int i, j;




    if (conn->encoder_id) {
        enc = drmModeGetEncoder(sys->drm_fd, conn->encoder_id);
        if (enc) {
            if (enc->crtc_id) {
                msg_Dbg(vd, "Got CRTC %d from current encoder", enc->crtc_id);

                sys->crtc = enc->crtc_id;
                drmModeFreeEncoder(enc);
                return drvSuccess;
            }
            drmModeFreeEncoder(enc);
        }
    }




    for (i = 0; i < conn->count_encoders; i++) {
        enc = drmModeGetEncoder(sys->drm_fd, conn->encoders[i]);

        for (j = 0; enc && j < res->count_crtcs; ++j) {
            if (ffs(enc->possible_crtcs) == j && res->crtcs[j]) {
                msg_Dbg(vd, "Got CRTC %d", res->crtcs[j]);
                sys->crtc = res->crtcs[j];
                drmModeFreeEncoder(enc);
                return drvSuccess;
            }
        }
        drmModeFreeEncoder(enc);
    }

    msg_Err(vd , "Cannot find CRTC for connector %d", conn->connector_id);
    return drvTryNext;
}
