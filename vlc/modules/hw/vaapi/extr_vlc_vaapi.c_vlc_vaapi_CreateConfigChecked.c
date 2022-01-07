
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_10__ {int i; } ;
struct TYPE_11__ {TYPE_1__ value; } ;
struct TYPE_12__ {scalar_t__ type; int flags; TYPE_2__ value; } ;
typedef TYPE_3__ VASurfaceAttrib ;
typedef int VAProfile ;
typedef int VAEntrypoint ;
typedef int VADisplay ;
typedef scalar_t__ VAConfigID ;
struct TYPE_13__ {int value; int type; } ;
typedef TYPE_4__ VAConfigAttrib ;


 int IsEntrypointAvailable (int ,int ,int ) ;
 int IsVaProfileSupported (int ,int ) ;
 int VAConfigAttribRTFormat ;
 scalar_t__ VASurfaceAttribPixelFormat ;
 int VA_CALL (int *,int ,int ,int ,int ,TYPE_4__*,int,scalar_t__*) ;
 scalar_t__ VA_INVALID_ID ;
 int VA_RT_FORMAT_YUV420 ;
 int VA_RT_FORMAT_YUV420_10BPP ;
 scalar_t__ VA_STATUS_SUCCESS ;
 int VA_SURFACE_ATTRIB_SETTABLE ;
 int free (TYPE_3__*) ;
 int msg_Err (int *,char*,...) ;
 int vaCreateConfig ;
 scalar_t__ vaGetConfigAttributes (int ,int ,int ,TYPE_4__*,int) ;
 scalar_t__ vaQuerySurfaceAttributes (int ,scalar_t__,TYPE_3__*,unsigned int*) ;
 TYPE_3__* vlc_alloc (unsigned int,int) ;
 int vlc_chroma_to_vaapi (int,unsigned int*,int*) ;
 int vlc_vaapi_DestroyConfig (int *,int ,scalar_t__) ;

VAConfigID
vlc_vaapi_CreateConfigChecked(vlc_object_t *o, VADisplay dpy,
                              VAProfile i_profile, VAEntrypoint entrypoint,
                              int i_force_vlc_chroma)
{
    int va_force_fourcc = 0;
    if (i_force_vlc_chroma != 0)
    {
        unsigned unused;
        vlc_chroma_to_vaapi(i_force_vlc_chroma, &unused, &va_force_fourcc);
    }

    if (!IsVaProfileSupported(dpy, i_profile))
    {
        msg_Err(o, "profile(%d) is not supported", i_profile);
        return VA_INVALID_ID;
    }
    if (!IsEntrypointAvailable(dpy, i_profile, entrypoint))
    {
        msg_Err(o, "entrypoint(%d) is not available", entrypoint);
        return VA_INVALID_ID;
    }


    VAConfigAttrib attrib = {
        .type = VAConfigAttribRTFormat,
    };
    if (vaGetConfigAttributes(dpy, i_profile, entrypoint, &attrib, 1))
    {
        msg_Err(o, "vaGetConfigAttributes failed");
        return VA_INVALID_ID;
    }


    if ((attrib.value & (VA_RT_FORMAT_YUV420|VA_RT_FORMAT_YUV420_10BPP)) == 0)
    {
        msg_Err(o, "config doesn't support VA_RT_FORMAT_YUV420*");
        return VA_INVALID_ID;
    }

    unsigned int num_sattribs;
    VASurfaceAttrib *sattribs = ((void*)0);
    VAConfigID va_config_id = VA_INVALID_ID;
    VA_CALL(o, vaCreateConfig, dpy, i_profile, entrypoint, &attrib, 1,
            &va_config_id);

    if (va_force_fourcc == 0)
        return va_config_id;


    if (vaQuerySurfaceAttributes(dpy, va_config_id, ((void*)0), &num_sattribs)
        != VA_STATUS_SUCCESS)
        goto error;

    sattribs = vlc_alloc(num_sattribs, sizeof(*sattribs));
    if (sattribs == ((void*)0))
        goto error;
    if (vaQuerySurfaceAttributes(dpy, va_config_id, sattribs, &num_sattribs)
        != VA_STATUS_SUCCESS)
        goto error;

    for (unsigned i = 0; i < num_sattribs; ++i)
    {
        VASurfaceAttrib *sattrib = &sattribs[i];
        if (sattrib->type == VASurfaceAttribPixelFormat
         && sattrib->flags & VA_SURFACE_ATTRIB_SETTABLE
         && sattrib->value.value.i == va_force_fourcc)
        {
            free(sattribs);
            return va_config_id;
        }

    }

error:
    free(sattribs);
    if (va_config_id != VA_INVALID_ID)
    {
        msg_Err(o, "config doesn't support forced fourcc");
        vlc_vaapi_DestroyConfig(o, dpy, va_config_id);
    }
    return VA_INVALID_ID;
}
