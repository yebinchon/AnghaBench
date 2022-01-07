
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_77__ TYPE_9__ ;
typedef struct TYPE_76__ TYPE_8__ ;
typedef struct TYPE_75__ TYPE_7__ ;
typedef struct TYPE_74__ TYPE_6__ ;
typedef struct TYPE_73__ TYPE_5__ ;
typedef struct TYPE_72__ TYPE_4__ ;
typedef struct TYPE_71__ TYPE_44__ ;
typedef struct TYPE_70__ TYPE_40__ ;
typedef struct TYPE_69__ TYPE_3__ ;
typedef struct TYPE_68__ TYPE_2__ ;
typedef struct TYPE_67__ TYPE_25__ ;
typedef struct TYPE_66__ TYPE_22__ ;
typedef struct TYPE_65__ TYPE_1__ ;
typedef struct TYPE_64__ TYPE_19__ ;
typedef struct TYPE_63__ TYPE_14__ ;
typedef struct TYPE_62__ TYPE_13__ ;
typedef struct TYPE_61__ TYPE_12__ ;
typedef struct TYPE_60__ TYPE_11__ ;
typedef struct TYPE_59__ TYPE_10__ ;


struct TYPE_77__ {TYPE_10__* p; } ;
typedef TYPE_9__ vout_thread_t ;
struct TYPE_72__ {scalar_t__ date; TYPE_40__* current; } ;
struct TYPE_66__ {int avg; int var; } ;
struct TYPE_73__ {scalar_t__ date; scalar_t__ is_on; } ;
struct TYPE_69__ {int lock; int chain_interactive; } ;
struct TYPE_59__ {scalar_t__ spu_blend_chroma; int statistic; int display_lock; int rate; int clock; TYPE_4__ displayed; TYPE_22__ render; TYPE_44__* spu_blend; int snapshot; int private_pool; int spu; TYPE_5__ pause; TYPE_11__* display; TYPE_3__ filter; } ;
typedef TYPE_10__ vout_thread_sys_t ;
struct TYPE_62__ {scalar_t__ orientation; int i_width; int i_height; int i_visible_width; int i_visible_height; scalar_t__ i_chroma; int i_sar_den; int i_sar_num; } ;
struct TYPE_74__ {scalar_t__* subpicture_chromas; int can_scale_spu; } ;
struct TYPE_60__ {int (* prepare ) (TYPE_11__*,TYPE_14__*,int *,scalar_t__) ;TYPE_13__ source; TYPE_6__ info; TYPE_19__* cfg; TYPE_13__ fmt; } ;
typedef TYPE_11__ vout_display_t ;
struct TYPE_61__ {int width; int height; } ;
typedef TYPE_12__ vout_display_place_t ;
typedef scalar_t__ vlc_tick_t ;
typedef scalar_t__ vlc_fourcc_t ;
typedef TYPE_13__ video_format_t ;
typedef int subpicture_t ;
struct TYPE_67__ {unsigned int i_frame_rate; unsigned int i_frame_rate_base; } ;
struct TYPE_63__ {int date; TYPE_25__ format; } ;
typedef TYPE_14__ picture_t ;
struct TYPE_75__ {int den; int num; } ;
struct TYPE_76__ {TYPE_7__ sar; } ;
struct TYPE_65__ {scalar_t__ i_chroma; } ;
struct TYPE_68__ {TYPE_1__ video; } ;
struct TYPE_71__ {TYPE_2__ fmt_out; } ;
struct TYPE_70__ {int date; } ;
struct TYPE_64__ {TYPE_8__ display; } ;


 TYPE_14__* ConvertRGB32AndBlend (TYPE_9__*,TYPE_14__*,int *) ;
 scalar_t__ INT64_MAX ;
 scalar_t__ ORIENT_NORMAL ;
 int VLC_EGENERIC ;
 int VLC_OBJECT (TYPE_9__*) ;
 int VLC_SUCCESS ;
 int VOUT_REDISPLAY_DELAY ;
 int assert (TYPE_14__*) ;
 int filter_DeleteBlend (TYPE_44__*) ;
 TYPE_44__* filter_NewBlend (int ,TYPE_13__*) ;
 TYPE_14__* filter_chain_VideoFilter (int ,TYPE_14__*) ;
 int msg_Err (TYPE_9__*,char*) ;
 int msg_Info (TYPE_9__*,char*,int,int) ;
 int msg_Warn (TYPE_9__*,char*) ;
 scalar_t__ picture_BlendSubpicture (TYPE_14__*,TYPE_44__*,int *) ;
 int picture_Copy (TYPE_14__*,TYPE_14__*) ;
 TYPE_14__* picture_Hold (TYPE_40__*) ;
 int picture_Release (TYPE_14__*) ;
 TYPE_14__* picture_pool_Get (int ) ;
 int * spu_Render (int ,scalar_t__ const*,TYPE_13__*,TYPE_13__*,scalar_t__,scalar_t__,int const,int ) ;
 int stub1 (TYPE_11__*,TYPE_14__*,int *,scalar_t__) ;
 int subpicture_Delete (int *) ;
 scalar_t__ unlikely (int) ;
 int video_format_ApplyRotation (TYPE_13__*,TYPE_13__*) ;
 int video_format_CopyCropAr (TYPE_25__*,TYPE_25__*) ;
 scalar_t__ vlc_clock_ConvertToSystem (int ,scalar_t__,scalar_t__ const,int ) ;
 int vlc_clock_UpdateVideo (int ,scalar_t__,scalar_t__ const,int ,unsigned int const,unsigned int const) ;
 int vlc_clock_Wait (int ,scalar_t__,scalar_t__ const,int ,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 scalar_t__ vlc_tick_now () ;
 TYPE_14__* vout_ConvertForDisplay (TYPE_11__*,TYPE_14__*) ;
 int vout_UpdateDisplaySourceProperties (TYPE_11__*,TYPE_25__*) ;
 int vout_chrono_Start (TYPE_22__*) ;
 int vout_chrono_Stop (TYPE_22__*) ;
 int vout_display_Display (TYPE_11__*,TYPE_14__*) ;
 int vout_display_PlacePicture (TYPE_12__*,TYPE_13__*,TYPE_19__*) ;
 int vout_snapshot_IsRequested (int ) ;
 int vout_snapshot_Set (int ,TYPE_13__*,TYPE_14__*) ;
 int vout_statistic_AddDisplayed (int *,int) ;

__attribute__((used)) static int ThreadDisplayRenderPicture(vout_thread_t *vout, bool is_forced)
{
    vout_thread_sys_t *sys = vout->p;

    picture_t *torender = picture_Hold(sys->displayed.current);

    vout_chrono_Start(&sys->render);

    vlc_mutex_lock(&sys->filter.lock);
    picture_t *filtered = filter_chain_VideoFilter(sys->filter.chain_interactive, torender);
    vlc_mutex_unlock(&sys->filter.lock);

    if (!filtered)
        return VLC_EGENERIC;

    if (filtered->date != sys->displayed.current->date)
        msg_Warn(vout, "Unsupported timestamp modifications done by chain_interactive");

    vout_display_t *vd = sys->display;

    vlc_mutex_lock(&sys->display_lock);




    const bool do_snapshot = vout_snapshot_IsRequested(sys->snapshot);
    vlc_tick_t system_now = vlc_tick_now();
    vlc_tick_t render_subtitle_date;
    if (sys->pause.is_on)
        render_subtitle_date = sys->pause.date;
    else
    {
        render_subtitle_date = filtered->date <= 1 ? system_now :
            vlc_clock_ConvertToSystem(sys->clock, system_now, filtered->date,
                                      sys->rate);




        if (unlikely(render_subtitle_date == INT64_MAX))
        {
            render_subtitle_date = system_now;
            is_forced = 1;
        }
    }




    const bool do_dr_spu = !do_snapshot &&
                           vd->info.subpicture_chromas &&
                           *vd->info.subpicture_chromas != 0;





    const bool do_early_spu = !do_dr_spu &&
                               vd->source.orientation == ORIENT_NORMAL;

    const vlc_fourcc_t *subpicture_chromas;
    video_format_t fmt_spu;
    if (do_dr_spu) {
        vout_display_place_t place;
        vout_display_PlacePicture(&place, &vd->source, vd->cfg);

        fmt_spu = vd->source;
        if (fmt_spu.i_width * fmt_spu.i_height < place.width * place.height) {
            fmt_spu.i_sar_num = vd->cfg->display.sar.num;
            fmt_spu.i_sar_den = vd->cfg->display.sar.den;
            fmt_spu.i_width =
            fmt_spu.i_visible_width = place.width;
            fmt_spu.i_height =
            fmt_spu.i_visible_height = place.height;
        }
        subpicture_chromas = vd->info.subpicture_chromas;
    } else {
        if (do_early_spu) {
            fmt_spu = vd->source;
        } else {
            fmt_spu = vd->fmt;
            fmt_spu.i_sar_num = vd->cfg->display.sar.num;
            fmt_spu.i_sar_den = vd->cfg->display.sar.den;
        }
        subpicture_chromas = ((void*)0);

        if (sys->spu_blend &&
            sys->spu_blend->fmt_out.video.i_chroma != fmt_spu.i_chroma) {
            filter_DeleteBlend(sys->spu_blend);
            sys->spu_blend = ((void*)0);
            sys->spu_blend_chroma = 0;
        }
        if (!sys->spu_blend && sys->spu_blend_chroma != fmt_spu.i_chroma) {
            sys->spu_blend_chroma = fmt_spu.i_chroma;
            sys->spu_blend = filter_NewBlend(VLC_OBJECT(vout), &fmt_spu);
            if (!sys->spu_blend)
                msg_Err(vout, "Failed to create blending filter, OSD/Subtitles will not work");
        }
    }

    video_format_t fmt_spu_rot;
    video_format_ApplyRotation(&fmt_spu_rot, &fmt_spu);
    subpicture_t *subpic = !sys->spu ? ((void*)0) :
                           spu_Render(sys->spu,
                                      subpicture_chromas, &fmt_spu_rot,
                                      &vd->source, system_now,
                                      render_subtitle_date,
                                      do_snapshot, vd->info.can_scale_spu);







    picture_t *todisplay = filtered;
    picture_t *snap_pic = todisplay;
    if (do_early_spu && subpic) {
        if (sys->spu_blend) {
            picture_t *blent = picture_pool_Get(sys->private_pool);
            if (blent) {
                video_format_CopyCropAr(&blent->format, &filtered->format);
                picture_Copy(blent, filtered);
                if (picture_BlendSubpicture(blent, sys->spu_blend, subpic)) {
                    picture_Release(todisplay);
                    snap_pic = todisplay = blent;
                } else
                {



                    if (do_snapshot)
                    {
                        picture_t *copy = ConvertRGB32AndBlend(vout, blent, subpic);
                        if (copy)
                            snap_pic = copy;
                    }
                    picture_Release(blent);
                }
            }
        }
        subpicture_Delete(subpic);
        subpic = ((void*)0);
    }




    if (do_snapshot)
    {
        assert(snap_pic);
        vout_snapshot_Set(sys->snapshot, &vd->source, snap_pic);
        if (snap_pic != todisplay)
            picture_Release(snap_pic);
    }


    vout_UpdateDisplaySourceProperties(vd, &todisplay->format);

    todisplay = vout_ConvertForDisplay(vd, todisplay);
    if (todisplay == ((void*)0)) {
        vlc_mutex_unlock(&sys->display_lock);

        if (subpic != ((void*)0))
            subpicture_Delete(subpic);
        return VLC_EGENERIC;
    }

    if (!do_dr_spu && sys->spu_blend != ((void*)0) && subpic != ((void*)0))
        picture_BlendSubpicture(todisplay, sys->spu_blend, subpic);

    system_now = vlc_tick_now();
    const vlc_tick_t pts = todisplay->date;
    vlc_tick_t system_pts = is_forced ? system_now :
        vlc_clock_ConvertToSystem(sys->clock, system_now, pts, sys->rate);
    if (unlikely(system_pts == INT64_MAX))
    {



        system_pts = system_now;
        is_forced = 1;
    }

    const unsigned frame_rate = todisplay->format.i_frame_rate;
    const unsigned frame_rate_base = todisplay->format.i_frame_rate_base;

    if (vd->prepare != ((void*)0))
        vd->prepare(vd, todisplay, do_dr_spu ? subpic : ((void*)0), system_pts);

    vout_chrono_Stop(&sys->render);
    system_now = vlc_tick_now();
    if (!is_forced)
    {
        if (unlikely(system_now > system_pts))
        {


            system_pts = system_now;
        }
        else
        {

            vlc_clock_Wait(sys->clock, system_now, pts, sys->rate,
                           VOUT_REDISPLAY_DELAY);



        }
        sys->displayed.date = system_pts;
    }
    else
    {
        sys->displayed.date = system_now;

        system_pts = INT64_MAX;
    }
    vlc_clock_UpdateVideo(sys->clock, system_pts, pts, sys->rate,
                          frame_rate, frame_rate_base);


    vout_display_Display(vd, todisplay);
    vlc_mutex_unlock(&sys->display_lock);

    if (subpic)
        subpicture_Delete(subpic);

    vout_statistic_AddDisplayed(&sys->statistic, 1);

    return VLC_SUCCESS;
}
