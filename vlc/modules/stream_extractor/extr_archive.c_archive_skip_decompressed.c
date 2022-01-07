
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int stream_extractor_t ;
typedef int ssize_t ;


 int Read (int *,int *,scalar_t__) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

__attribute__((used)) static int archive_skip_decompressed( stream_extractor_t* p_extractor, uint64_t i_skip )
{
    while( i_skip )
    {
        ssize_t i_read = Read( p_extractor, ((void*)0), i_skip );

        if( i_read < 1 )
            return VLC_EGENERIC;

        i_skip -= i_read;
    }

    return VLC_SUCCESS;
}
