
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct adjust_data {int dummy; } ;
struct TYPE_3__ {int pf_video_filter; } ;
typedef TYPE_1__ filter_t ;
typedef int VAProcPipelineCaps ;


 int Adjust ;
 int FilterCallback ;
 unsigned int NUM_ADJUST_MODES ;
 scalar_t__ Open (TYPE_1__* const,int ,int *,struct adjust_data* const,int ,int *) ;
 int OpenAdjust_InitFilterParams ;
 int VAProcFilterColorBalance ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_VAR_DOINHERIT ;
 int VLC_VAR_FLOAT ;
 int VLC_VAR_ISCOMMAND ;
 int * adjust_params_names ;
 struct adjust_data* calloc (int,int) ;
 int free (struct adjust_data* const) ;
 int var_AddCallback (int *,int ,int ,struct adjust_data* const) ;
 int var_Create (int *,int ,int) ;
 int var_Destroy (int *,int ) ;

__attribute__((used)) static int
OpenAdjust(vlc_object_t * obj)
{
    VAProcPipelineCaps pipeline_caps;
    filter_t *const filter = (filter_t *)obj;
    struct adjust_data *const p_data = calloc(1, sizeof(*p_data));
    if (!p_data)
        return VLC_ENOMEM;

    for (unsigned int i = 0; i < NUM_ADJUST_MODES; ++i)
        var_Create(obj, adjust_params_names[i],
                   VLC_VAR_FLOAT | VLC_VAR_DOINHERIT | VLC_VAR_ISCOMMAND);

    if (Open(filter, VAProcFilterColorBalance, &pipeline_caps, p_data,
             OpenAdjust_InitFilterParams, ((void*)0)))
        goto error;

    for (unsigned int i = 0; i < NUM_ADJUST_MODES; ++i)
        var_AddCallback(obj, adjust_params_names[i], FilterCallback, p_data);

    filter->pf_video_filter = Adjust;

    return VLC_SUCCESS;

error:
    for (unsigned int i = 0; i < NUM_ADJUST_MODES; ++i)
        var_Destroy(obj, adjust_params_names[i]);
    free(p_data);
    return VLC_EGENERIC;
}
