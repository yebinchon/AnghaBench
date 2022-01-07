
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int psz_url; } ;
typedef TYPE_1__ stream_t ;
typedef int input_thread_t ;
struct TYPE_8__ {int i_seekpoint_end; int i_seekpoint_start; int i_title_end; int i_title_start; } ;
typedef TYPE_2__ input_source_t ;


 int MRLSections (char const*,int *,int *,int *,int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Dbg (int *,char*,int ) ;
 int msg_Err (int *,char*,int ) ;
 scalar_t__ stream_extractor_AttachParsed (TYPE_1__**,char const*,char const**) ;
 scalar_t__ vlc_stream_directory_Attach (TYPE_1__**,int *) ;

__attribute__((used)) static int
InputStreamHandleAnchor( input_thread_t *p_input, input_source_t *source,
                         stream_t **stream, char const *anchor )
{
    char const* extra;
    if( stream_extractor_AttachParsed( stream, anchor, &extra ) )
    {
        msg_Err( p_input, "unable to attach stream-extractors for %s",
            (*stream)->psz_url );

        return VLC_EGENERIC;
    }

    if( vlc_stream_directory_Attach( stream, ((void*)0) ) )
        msg_Dbg( p_input, "attachment of directory-extractor failed for %s",
            (*stream)->psz_url );

    MRLSections( extra ? extra : "",
        &source->i_title_start, &source->i_title_end,
        &source->i_seekpoint_start, &source->i_seekpoint_end );

    return VLC_SUCCESS;
}
