
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int filter_t ;
typedef int audio_sample_format_t ;


 int * CreateFilter (int *,int *,char*,char*,int const*,int const*,int *,int) ;
 int free (char*) ;
 char* var_InheritString (int *,char*) ;

__attribute__((used)) static filter_t *FindResampler (vlc_object_t *obj,
                                const audio_sample_format_t *infmt,
                                const audio_sample_format_t *outfmt)
{
    char *modlist = var_InheritString(obj, "audio-resampler");
    filter_t *filter = CreateFilter(obj, ((void*)0), "audio resampler", modlist,
                                    infmt, outfmt, ((void*)0), 1);
    free(modlist);
    return filter;
}
