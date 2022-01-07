
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;


 int StreamExtractorAttach (int **,char const*,char const*) ;

int
vlc_stream_extractor_Attach( stream_t** source, char const* identifier,
                             char const* module_name )
{
    return StreamExtractorAttach( source, identifier, module_name );
}
