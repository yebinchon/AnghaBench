#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_10__ {int i; } ;
struct TYPE_11__ {TYPE_1__ value; } ;
struct TYPE_12__ {scalar_t__ type; int flags; TYPE_2__ value; } ;
typedef  TYPE_3__ VASurfaceAttrib ;
typedef  int /*<<< orphan*/  VAProfile ;
typedef  int /*<<< orphan*/  VAEntrypoint ;
typedef  int /*<<< orphan*/  VADisplay ;
typedef  scalar_t__ VAConfigID ;
struct TYPE_13__ {int value; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ VAConfigAttrib ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VAConfigAttribRTFormat ; 
 scalar_t__ VASurfaceAttribPixelFormat ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int,scalar_t__*) ; 
 scalar_t__ VA_INVALID_ID ; 
 int VA_RT_FORMAT_YUV420 ; 
 int VA_RT_FORMAT_YUV420_10BPP ; 
 scalar_t__ VA_STATUS_SUCCESS ; 
 int VA_SURFACE_ATTRIB_SETTABLE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  vaCreateConfig ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,TYPE_3__*,unsigned int*) ; 
 TYPE_3__* FUNC7 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

VAConfigID
FUNC10(vlc_object_t *o, VADisplay dpy,
                              VAProfile i_profile, VAEntrypoint entrypoint,
                              int i_force_vlc_chroma)
{
    int va_force_fourcc = 0;
    if (i_force_vlc_chroma != 0)
    {
        unsigned unused;
        FUNC8(i_force_vlc_chroma, &unused, &va_force_fourcc);
    }

    if (!FUNC1(dpy, i_profile))
    {
        FUNC4(o, "profile(%d) is not supported", i_profile);
        return VA_INVALID_ID;
    }
    if (!FUNC0(dpy, i_profile, entrypoint))
    {
        FUNC4(o, "entrypoint(%d) is not available", entrypoint);
        return VA_INVALID_ID;
    }

    /* Create a VA configuration */
    VAConfigAttrib attrib = {
        .type = VAConfigAttribRTFormat,
    };
    if (FUNC5(dpy, i_profile, entrypoint, &attrib, 1))
    {
        FUNC4(o, "vaGetConfigAttributes failed");
        return VA_INVALID_ID;
    }

    /* Not sure what to do if not, I don't have a way to test */
    if ((attrib.value & (VA_RT_FORMAT_YUV420|VA_RT_FORMAT_YUV420_10BPP)) == 0)
    {
        FUNC4(o, "config doesn't support VA_RT_FORMAT_YUV420*");
        return VA_INVALID_ID;
    }

    unsigned int num_sattribs;
    VASurfaceAttrib *sattribs = NULL;
    VAConfigID va_config_id = VA_INVALID_ID;
    FUNC2(o, vaCreateConfig, dpy, i_profile, entrypoint, &attrib, 1,
            &va_config_id);

    if (va_force_fourcc == 0)
        return va_config_id;

    /* Fetch VASurfaceAttrib list to make sure the decoder can output NV12 */
    if (FUNC6(dpy, va_config_id, NULL, &num_sattribs)
        != VA_STATUS_SUCCESS)
        goto error;

    sattribs = FUNC7(num_sattribs, sizeof(*sattribs));
    if (sattribs == NULL)
        goto error;
    if (FUNC6(dpy, va_config_id, sattribs, &num_sattribs)
        != VA_STATUS_SUCCESS)
        goto error;

    for (unsigned i = 0; i < num_sattribs; ++i)
    {
        VASurfaceAttrib *sattrib = &sattribs[i];
        if (sattrib->type == VASurfaceAttribPixelFormat
         && sattrib->flags & VA_SURFACE_ATTRIB_SETTABLE
         && sattrib->value.value.i == va_force_fourcc)
        {
            FUNC3(sattribs);
            return va_config_id;
        }

    }

error:
    FUNC3(sattribs);
    if (va_config_id != VA_INVALID_ID)
    {
        FUNC4(o, "config doesn't support forced fourcc");
        FUNC9(o, dpy, va_config_id);
    }
    return VA_INVALID_ID;
}