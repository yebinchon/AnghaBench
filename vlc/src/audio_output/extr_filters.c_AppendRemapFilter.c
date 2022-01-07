
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int uint8_t ;
typedef int config_chain_t ;
typedef int audio_sample_format_t ;
typedef int aout_filters_t ;


 int AOUT_CHAN_MAX ;
 int AppendFilter (int *,char*,char*,int *,int *,int const*,int *) ;
 int asprintf (char**,char*,int,int,int,int,int,int,int,int,int) ;
 char* config_ChainCreate (char**,int **,char*) ;
 int config_ChainDestroy (int *) ;
 int free (char*) ;

__attribute__((used)) static int AppendRemapFilter(vlc_object_t *obj, aout_filters_t *restrict filters,
                             audio_sample_format_t *restrict infmt,
                             const audio_sample_format_t *restrict outfmt,
                             const int *wg4_remap)
{
    char *name;
    config_chain_t *cfg;


    static const uint8_t wg4_to_remap[] = { 0, 2, 6, 7, 3, 5, 4, 1, 8 };
    int remap[AOUT_CHAN_MAX];
    bool needed = 0;
    for (int i = 0; i < AOUT_CHAN_MAX; ++i)
    {
        if (wg4_remap[i] != i)
            needed = 1;
        remap[i] = wg4_remap[i] >= 0 ? wg4_to_remap[wg4_remap[i]] : -1;
    }
    if (!needed)
        return 0;

    char *str;
    int ret = asprintf(&str, "remap{channel-left=%d,channel-right=%d,"
                       "channel-middleleft=%d,channel-middleright=%d,"
                       "channel-rearleft=%d,channel-rearright=%d,"
                       "channel-rearcenter=%d,channel-center=%d,"
                       "channel-lfe=%d,normalize=false}",
                       remap[0], remap[1], remap[2], remap[3], remap[4],
                       remap[5], remap[6], remap[7], remap[8]);
    if (ret == -1)
        return -1;

    free(config_ChainCreate(&name, &cfg, str));
    if (name != ((void*)0) && cfg != ((void*)0))
        ret = AppendFilter(obj, "audio filter", name, filters,
                           infmt, outfmt, cfg);
    else
        ret = -1;

    free(str);
    free(name);
    if (cfg)
        config_ChainDestroy(cfg);
    return ret;
}
