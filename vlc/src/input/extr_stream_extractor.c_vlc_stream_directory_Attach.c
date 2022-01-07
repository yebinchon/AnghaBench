
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;


 int StreamExtractorAttach (int **,int *,char const*) ;

int
vlc_stream_directory_Attach( stream_t** source, char const* module_name )
{
    return StreamExtractorAttach( source, ((void*)0), module_name );
}
