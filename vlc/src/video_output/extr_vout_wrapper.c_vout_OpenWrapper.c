
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {TYPE_3__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_22__ {int * display_pool; int * private_pool; int original; } ;
typedef TYPE_3__ vout_thread_sys_t ;
struct TYPE_20__ {scalar_t__ projection_mode; } ;
struct TYPE_23__ {TYPE_1__ fmt; int source; } ;
typedef TYPE_4__ vout_display_t ;
struct TYPE_24__ {TYPE_2__* sys; int viewpoint_moved; } ;
typedef TYPE_5__ vout_display_owner_t ;
typedef int vout_display_cfg_t ;
typedef int vlc_video_context ;
typedef int picture_pool_t ;


 unsigned int const DISPLAY_PICTURE_COUNT ;
 int Forward ;
 scalar_t__ PROJECTION_MODE_RECTANGULAR ;
 int VLC_OBJECT (TYPE_2__*) ;
 int VLC_VAR_BOOL ;
 int VLC_VAR_DOINHERIT ;
 int VOUT_MAX_PICTURES ;
 int VoutViewpointMoved ;
 int __MAX (int ,unsigned int const) ;
 int free (char*) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int msg_Warn (TYPE_2__*,char*,unsigned int const,unsigned int const) ;
 unsigned int const picture_pool_GetSize (int *) ;
 int * picture_pool_NewFromFormat (int *,int ) ;
 int picture_pool_Release (int *) ;
 int * picture_pool_Reserve (int *,unsigned int const) ;
 int var_AddCallback (TYPE_2__*,char*,int ,TYPE_4__*) ;
 int var_Create (TYPE_2__*,char*,int) ;
 char* var_InheritString (TYPE_2__*,char*) ;
 int var_SetBool (int ,char*,int) ;
 int * vout_GetPool (TYPE_4__*,unsigned int const) ;
 int vout_IsDisplayFiltered (TYPE_4__*) ;
 int vout_display_Delete (TYPE_4__*) ;
 TYPE_4__* vout_display_New (int ,int *,int *,int const*,char const*,TYPE_5__*) ;

vout_display_t *vout_OpenWrapper(vout_thread_t *vout,
                     const char *splitter_name, const vout_display_cfg_t *cfg,
                     vlc_video_context *vctx)
{
    vout_thread_sys_t *sys = vout->p;
    vout_display_t *vd;
    vout_display_owner_t owner = {
        .viewpoint_moved = VoutViewpointMoved, .sys = vout,
    };
    const char *modlist;
    char *modlistbuf = ((void*)0);

    msg_Dbg(vout, "Opening vout display wrapper");

    if (splitter_name == ((void*)0))
        modlist = modlistbuf = var_InheritString(vout, "vout");
    else
        modlist = "splitter,none";

    vd = vout_display_New(VLC_OBJECT(vout), &sys->original, vctx, cfg,
                          modlist, &owner);
    free(modlistbuf);

    if (vd == ((void*)0))
        return ((void*)0);

    sys->display_pool = ((void*)0);

    const unsigned private_picture = 4;
    const unsigned kept_picture = 1;
    const unsigned reserved_picture = DISPLAY_PICTURE_COUNT +
                                      private_picture +
                                      kept_picture;

    picture_pool_t *display_pool = vout_GetPool(vd, reserved_picture);
    if (display_pool == ((void*)0))
        goto error;


    if ( picture_pool_GetSize(display_pool) < reserved_picture )
        msg_Warn(vout, "Not enough display buffers in the pool, requested %u got %u",
                 reserved_picture, picture_pool_GetSize(display_pool));


    if (!vout_IsDisplayFiltered(vd) &&
        picture_pool_GetSize(display_pool) >= reserved_picture) {
        sys->private_pool = picture_pool_Reserve(display_pool, private_picture);
    } else {
        sys->private_pool =
            picture_pool_NewFromFormat(&vd->source,
                                       __MAX(VOUT_MAX_PICTURES,
                                             reserved_picture - DISPLAY_PICTURE_COUNT));
    }
    if (sys->private_pool == ((void*)0)) {
        picture_pool_Release(display_pool);
        goto error;
    }
    sys->display_pool = display_pool;





    var_SetBool(VLC_OBJECT(vout), "viewpoint-changeable",
                vd->fmt.projection_mode != PROJECTION_MODE_RECTANGULAR);
    return vd;

error:
    vout_display_Delete(vd);
    return ((void*)0);
}
