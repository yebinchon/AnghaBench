
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_array_t ;
typedef int stream_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int free (char*) ;
 scalar_t__ mrl_FragmentSplit (int *,char const**,char const*) ;
 int vlc_array_clear (int *) ;
 size_t vlc_array_count (int *) ;
 char* vlc_array_item_at_index (int *,size_t) ;
 scalar_t__ vlc_stream_extractor_Attach (int **,char*,int *) ;

int
stream_extractor_AttachParsed( stream_t** source, char const* data,
                               char const** out_extra )
{
    vlc_array_t identifiers;

    if( mrl_FragmentSplit( &identifiers, out_extra, data ) )
        return VLC_EGENERIC;

    size_t count = vlc_array_count( &identifiers );
    size_t idx = 0;

    while( idx < count )
    {
        char* id = vlc_array_item_at_index( &identifiers, idx );

        if( vlc_stream_extractor_Attach( source, id, ((void*)0) ) )
            break;

        ++idx;
    }

    for( size_t i = 0; i < count; ++i )
        free( vlc_array_item_at_index( &identifiers, i ) );
    vlc_array_clear( &identifiers );

    return idx == count ? VLC_SUCCESS : VLC_EGENERIC;
}
