
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* source; } ;
typedef TYPE_2__ stream_directory_t ;
struct TYPE_4__ {int psz_url; } ;


 char* StreamExtractorCreateMRL (int ,char const*) ;

char*
vlc_stream_extractor_CreateMRL( stream_directory_t* directory,
                                char const* subentry )
{
    return StreamExtractorCreateMRL( directory->source->psz_url, subentry );
}
