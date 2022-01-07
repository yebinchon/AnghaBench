
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int stream_t ;


 int msg_Err (int *,char*,char const*) ;
 int msg_Warn (int *,char*,char const*) ;
 char* strchr (char const*,char) ;
 scalar_t__ stream_extractor_AttachParsed (int **,char const*,char const**) ;
 int vlc_stream_Delete (int *) ;
 int * vlc_stream_NewURL (int *,char const*) ;

stream_t *(vlc_stream_NewMRL)(vlc_object_t* parent, const char* mrl )
{
    stream_t* stream = vlc_stream_NewURL( parent, mrl );

    if( stream == ((void*)0) )
        return ((void*)0);

    char const* anchor = strchr( mrl, '#' );

    if( anchor == ((void*)0) )
        return stream;

    char const* extra;
    if( stream_extractor_AttachParsed( &stream, anchor + 1, &extra ) )
    {
        msg_Err( parent, "unable to open %s", mrl );
        vlc_stream_Delete( stream );
        return ((void*)0);
    }

    if( extra && *extra )
        msg_Warn( parent, "ignoring extra fragment data: %s", extra );

    return stream;
}
