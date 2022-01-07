
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_18__ {int * pf_readdir; int * pf_block; int * pf_read; } ;
typedef TYPE_1__ stream_t ;
typedef int input_thread_t ;
struct TYPE_19__ {int b_preparsing; int p_es_out; } ;
typedef TYPE_2__ input_thread_private_t ;
struct TYPE_20__ {int i_seekpoint_end; int i_seekpoint_start; int i_title_end; int i_title_start; } ;
typedef TYPE_3__ input_source_t ;
typedef TYPE_1__ demux_t ;


 scalar_t__ InputStreamHandleAnchor (int *,TYPE_3__*,TYPE_1__**,char const*) ;
 int MRLSections (char const*,int *,int *,int *,int *) ;
 int * VLC_OBJECT (int *) ;
 TYPE_1__* demux_NewAdvanced (int *,int *,char const*,char const*,TYPE_1__*,int ,int ) ;
 int free (char*) ;
 TYPE_2__* input_priv (int *) ;
 TYPE_1__* stream_AccessNew (int *,int *,int ,int ,char const*) ;
 TYPE_1__* stream_FilterAutoNew (TYPE_1__*) ;
 TYPE_1__* stream_FilterChainNew (TYPE_1__*,char*) ;
 scalar_t__ var_InheritBool (int *,char*) ;
 char* var_InheritString (int *,char*) ;
 int vlc_stream_Delete (TYPE_1__*) ;

__attribute__((used)) static demux_t *InputDemuxNew( input_thread_t *p_input,
                               input_source_t *p_source, const char *url,
                               const char *psz_demux, const char *psz_anchor )
{
    input_thread_private_t *priv = input_priv(p_input );
    vlc_object_t *obj = VLC_OBJECT(p_input);


    stream_t *p_stream = stream_AccessNew( obj, p_input, priv->p_es_out,
                                           priv->b_preparsing, url );
    if( p_stream == ((void*)0) )
        return ((void*)0);

    p_stream = stream_FilterAutoNew( p_stream );

    if( p_stream->pf_read == ((void*)0) && p_stream->pf_block == ((void*)0)
     && p_stream->pf_readdir == ((void*)0) )
    {
        MRLSections( psz_anchor,
                     &p_source->i_title_start, &p_source->i_title_end,
                    &p_source->i_seekpoint_start, &p_source->i_seekpoint_end );
        return p_stream;
    }


    char *psz_filters = var_InheritString( p_input, "stream-filter" );
    if( psz_filters )
    {
        p_stream = stream_FilterChainNew( p_stream, psz_filters );
        free( psz_filters );
    }


    if( InputStreamHandleAnchor( p_input, p_source, &p_stream, psz_anchor ) )
        goto error;


    if( var_InheritBool( p_input, "input-record-native" ) )
        p_stream = stream_FilterChainNew( p_stream, "record" );


    demux_t *demux = demux_NewAdvanced( obj, p_input, psz_demux, url, p_stream,
                                        priv->p_es_out, priv->b_preparsing );
    if( demux != ((void*)0) )
        return demux;

error:
    vlc_stream_Delete( p_stream );
    return ((void*)0);
}
