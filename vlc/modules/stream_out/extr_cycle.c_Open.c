
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; int pf_send; int pf_del; int pf_add; TYPE_3__* p_cfg; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_8__ {scalar_t__ period; int * start; int * next; int clock; int * last; int * first; int * stream; } ;
typedef TYPE_2__ sout_stream_sys_t ;
typedef int sout_cycle_t ;
struct TYPE_9__ {char* psz_value; int psz_name; struct TYPE_9__* p_next; } ;
typedef TYPE_3__ config_chain_t ;


 int Add ;
 int AppendPhase (int ***,scalar_t__,char const*) ;
 int Del ;
 scalar_t__ ParseTime (char*) ;
 int Send ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int free (TYPE_2__*) ;
 int get_dts ;
 TYPE_2__* malloc (int) ;
 int msg_Err (TYPE_1__*,char*,...) ;
 int strcmp (int ,char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int Open(vlc_object_t *obj)
{
    sout_stream_t *stream = (sout_stream_t *)obj;
    sout_stream_sys_t *sys = malloc(sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    sys->stream = ((void*)0);
    sys->first = ((void*)0);
    sys->last = ((void*)0);
    sys->start = ((void*)0);
    sys->clock = get_dts;

    vlc_tick_t offset = 0;
    sout_cycle_t **pp = &sys->start;
    const char *chain = "";

    for (const config_chain_t *cfg = stream->p_cfg;
         cfg != ((void*)0);
         cfg = cfg->p_next)
    {
        if (!strcmp(cfg->psz_name, "dst"))
        {
            chain = cfg->psz_value;
        }
        else if (!strcmp(cfg->psz_name, "duration"))
        {
            vlc_tick_t t = ParseTime(cfg->psz_value);

            if (t > 0)
            {
                AppendPhase(&pp, offset, chain);
                offset += t;
            }

            chain = "";
        }
        else if (!strcmp(cfg->psz_name, "offset"))
        {
            vlc_tick_t t = ParseTime(cfg->psz_value);

            if (t > offset)
            {
                AppendPhase(&pp, offset, chain);
                offset = t;
            }

            chain = "";
        }
        else
        {
            msg_Err(stream, "unknown option \"%s\"", cfg->psz_name);
        }
    }

    if (sys->start == ((void*)0) || offset == 0)
    {
        free(sys);
        msg_Err(stream, "unknown or invalid cycle specification");
        return VLC_EGENERIC;
    }

    sys->next = sys->start;
    sys->period = offset;

    stream->pf_add = Add;
    stream->pf_del = Del;
    stream->pf_send = Send;
    stream->p_sys = sys;
    return VLC_SUCCESS;
}
