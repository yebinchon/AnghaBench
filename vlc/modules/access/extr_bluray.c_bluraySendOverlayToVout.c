
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int subpicture_t ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_9__ {int p_out; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_10__ {int b_on_vout; int status; int * p_updater; } ;
typedef TYPE_3__ bluray_overlay_t ;


 int BLURAY_ES_OUT_CONTROL_CREATE_OVERLAY ;
 int Outdated ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int * bluraySubpictureCreate (TYPE_3__*) ;
 int es_out_Control (int ,int ,int,int *) ;
 int msg_Err (TYPE_1__*,char*) ;
 int subpicture_Delete (int *) ;
 int unref_subpicture_updater (int *) ;

__attribute__((used)) static void bluraySendOverlayToVout(demux_t *p_demux, int plane, bluray_overlay_t *p_ov)
{
    demux_sys_t *p_sys = p_demux->p_sys;

    assert(p_ov != ((void*)0));
    assert(!p_ov->b_on_vout);

    if (p_ov->p_updater) {
        unref_subpicture_updater(p_ov->p_updater);
        p_ov->p_updater = ((void*)0);
    }

    subpicture_t *p_pic = bluraySubpictureCreate(p_ov);
    if (!p_pic) {
        msg_Err(p_demux, "bluraySubpictureCreate() failed");
        return;
    }







    int ret = es_out_Control(p_sys->p_out, BLURAY_ES_OUT_CONTROL_CREATE_OVERLAY,
                             plane, p_pic);
    if (ret != VLC_SUCCESS)
    {
        unref_subpicture_updater(p_ov->p_updater);
        p_ov->p_updater = ((void*)0);
        p_ov->b_on_vout = 0;
        subpicture_Delete(p_pic);
        return;
    }
    p_ov->b_on_vout = 1;





    p_ov->status = Outdated;
}
