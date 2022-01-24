#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_14__ {int drm_fd; scalar_t__ crtc; int /*<<< orphan*/  drm_fourcc; int /*<<< orphan*/  vlc_fourcc; } ;
typedef  TYPE_2__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_15__ {int count_connectors; int /*<<< orphan*/ * connectors; } ;
typedef  TYPE_3__ drmModeRes ;
typedef  int /*<<< orphan*/  drmModeConnector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DRM_CAP_DUMB_BUFFER ; 
 int /*<<< orphan*/  DRM_CLIENT_CAP_UNIVERSAL_PLANES ; 
 int /*<<< orphan*/  KMS_VAR ; 
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC1 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int drvSuccess ; 
 int drvTryNext ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,...) ; 
 char* FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    char *psz_device;
    int ret;
    uint64_t dumbRet;
    drmModeConnector *conn;
    drmModeRes *modeRes;
    int c;
    bool found_connector = false;

    /*
     * Open framebuffer device
     */
    psz_device = FUNC12(vd, KMS_VAR);
    if (psz_device == NULL) {
        FUNC11(vd, "Don't know which DRM device to open");
        return VLC_EGENERIC;
    }

    sys->drm_fd = FUNC14(psz_device, O_RDWR);
    if (sys->drm_fd == -1) {
        FUNC11(vd, "cannot open %s", psz_device);
        FUNC9(psz_device);
        return VLC_EGENERIC;
    }
    FUNC9(psz_device);

    FUNC8(sys->drm_fd, DRM_CLIENT_CAP_UNIVERSAL_PLANES, 1);

    if (!FUNC0(vd))
        goto err_out;

    FUNC10(vd, "Using VLC chroma '%.4s', DRM chroma '%.4s'",
            (char*)&sys->vlc_fourcc, (char*)&sys->drm_fourcc);

    ret = FUNC3(sys->drm_fd, DRM_CAP_DUMB_BUFFER, &dumbRet);
    if (ret < 0 || !dumbRet) {
        FUNC11(vd, "Device '%s' does not support dumb buffers", psz_device);
        goto err_out;
    }

    modeRes = FUNC7(sys->drm_fd);
    if (modeRes == NULL) {
        FUNC11(vd, "Didn't get DRM resources");
        goto err_out;
    }

    for (c = 0; c < modeRes->count_connectors && sys->crtc == 0; c++) {

        conn = FUNC6(sys->drm_fd, modeRes->connectors[c]);
        if (conn == NULL)
            continue;

        found_connector = true;

        ret = FUNC1(vd, modeRes, conn);
        if (ret != drvSuccess) {
            if (ret != drvTryNext) {
                FUNC11(vd, "Cannot do setup for connector %u:%u", c,
                        modeRes->connectors[c]);

                FUNC4(conn);
                FUNC5(modeRes);
                goto err_out;
            }
            FUNC4(conn);
            found_connector = false;
            continue;
        }
        FUNC4(conn);
    }
    FUNC5(modeRes);

    if (!found_connector)
        goto err_out;

    return VLC_SUCCESS;
err_out:
    FUNC2(sys->drm_fd);
    FUNC13(sys->drm_fd);
    sys->drm_fd = 0;
    return VLC_EGENERIC;
}