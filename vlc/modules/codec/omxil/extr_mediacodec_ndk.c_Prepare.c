
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_quirks; int psz_name; int i_codec; int i_cat; int psz_mime; int p_obj; } ;
typedef TYPE_1__ mc_api ;


 int MC_API_ERROR ;
 int MC_API_VIDEO_QUIRKS_SUPPORT_INTERLACED ;
 int MediaCodec_GetName (int ,int ,int,int *) ;
 int OMXCodec_GetQuirks (int ,int ,int ,int ) ;
 int free (int ) ;
 int strlen (int ) ;

__attribute__((used)) static int Prepare(mc_api * api, int i_profile)
{
    free(api->psz_name);

    api->i_quirks = 0;
    api->psz_name = MediaCodec_GetName(api->p_obj, api->psz_mime,
                                       i_profile, &api->i_quirks);
    if (!api->psz_name)
        return MC_API_ERROR;
    api->i_quirks |= OMXCodec_GetQuirks(api->i_cat, api->i_codec, api->psz_name,
                                        strlen(api->psz_name));

    api->i_quirks |= MC_API_VIDEO_QUIRKS_SUPPORT_INTERLACED;
    return 0;
}
