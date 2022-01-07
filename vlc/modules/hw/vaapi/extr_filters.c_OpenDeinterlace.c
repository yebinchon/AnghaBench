
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {struct deint_data* const pp_pics; } ;
struct TYPE_7__ {struct deint_data* const surfaces; } ;
struct deint_data {TYPE_3__ history; TYPE_2__ forward_refs; TYPE_1__* meta; scalar_t__ b_double_rate; } ;
struct TYPE_9__ {int pf_flush; int pf_video_filter; } ;
typedef TYPE_4__ filter_t ;
typedef int VAProcPipelineCaps ;
struct TYPE_6__ {int i_nb_fields; int date; } ;


 int Deinterlace ;
 int DeinterlaceX2 ;
 int Deinterlace_Flush ;
 unsigned int METADATA_SIZE ;
 scalar_t__ Open (TYPE_4__* const,int ,int *,struct deint_data* const,int ,int ) ;
 int OpenDeinterlace_InitFilterParams ;
 int OpenDeinterlace_InitHistory ;
 int VAProcFilterDeinterlacing ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 struct deint_data* calloc (int,int) ;
 int free (struct deint_data* const) ;

__attribute__((used)) static int
OpenDeinterlace(vlc_object_t * obj)
{
    VAProcPipelineCaps pipeline_caps;
    filter_t *const filter = (filter_t *)obj;
    struct deint_data *const p_data = calloc(1, sizeof(*p_data));
    if (!p_data)
        return VLC_ENOMEM;

    if (Open(filter, VAProcFilterDeinterlacing, &pipeline_caps, p_data,
             OpenDeinterlace_InitFilterParams, OpenDeinterlace_InitHistory))
        goto error;

    if (p_data->b_double_rate)
        filter->pf_video_filter = DeinterlaceX2;
    else
        filter->pf_video_filter = Deinterlace;
    filter->pf_flush = Deinterlace_Flush;

    for (unsigned int i = 0; i < METADATA_SIZE; ++i)
    {
        p_data->meta[i].date = VLC_TICK_INVALID;
        p_data->meta[i].i_nb_fields = 2;
    }

    return VLC_SUCCESS;

error:
    if (p_data->forward_refs.surfaces)
        free(p_data->forward_refs.surfaces);
    if (p_data->history.pp_pics)
        free(p_data->history.pp_pics);
    free(p_data);
    return VLC_EGENERIC;
}
