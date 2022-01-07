
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int es_format_t ;
struct TYPE_6__ {int pf_control; int pf_demux; TYPE_2__* p_sys; int * out; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_7__ {int next_time; int date; int es; } ;
typedef TYPE_2__ demux_sys_t ;


 int Control ;
 int Demux ;
 int SPU_ES ;
 int VLC_CODEC_ITU_T140 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_0 ;
 int VLC_TICK_INVALID ;
 int date_Init (int *,unsigned int,unsigned int) ;
 int date_Set (int *,int ) ;
 int es_format_Init (int *,int ,int ) ;
 int es_out_Add (int *,int *) ;
 int msg_Err (TYPE_1__*,char*) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ var_InheritURational (TYPE_1__*,unsigned int*,unsigned int*,char*) ;
 TYPE_2__* vlc_obj_malloc (int *,int) ;

__attribute__((used)) static int Open (vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    if (demux->out == ((void*)0))
        return VLC_EGENERIC;

    demux_sys_t *sys = vlc_obj_malloc(obj, sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    es_format_t fmt;
    es_format_Init (&fmt, SPU_ES, VLC_CODEC_ITU_T140);
    sys->es = es_out_Add (demux->out, &fmt);

    unsigned num, den;
    if (var_InheritURational (demux, &num, &den, "timecode-fps")
     || !num || !den)
    {
        msg_Err (demux, "invalid frame rate");
        return VLC_EGENERIC;
    }

    date_Init (&sys->date, num, den);
    date_Set (&sys->date, VLC_TICK_0);
    sys->next_time = VLC_TICK_INVALID;

    demux->p_sys = sys;
    demux->pf_demux = Demux;
    demux->pf_control = Control;
    return VLC_SUCCESS;
}
