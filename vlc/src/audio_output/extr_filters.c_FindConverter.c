
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int filter_t ;
typedef int audio_sample_format_t ;


 int * CreateFilter (int *,int *,char*,int *,int const*,int const*,int *,int) ;

__attribute__((used)) static filter_t *FindConverter (vlc_object_t *obj,
                                const audio_sample_format_t *infmt,
                                const audio_sample_format_t *outfmt)
{
    return CreateFilter(obj, ((void*)0), "audio converter", ((void*)0), infmt, outfmt,
                        ((void*)0), 1);
}
