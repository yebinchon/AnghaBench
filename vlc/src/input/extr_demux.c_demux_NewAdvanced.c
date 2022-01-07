
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct vlc_demux_private {int * module; } ;
typedef int stream_t ;
typedef int input_thread_t ;
typedef int es_out_t ;
struct TYPE_8__ {char const* psz_name; char const* psz_location; char* psz_filepath; int b_preparsing; int * p_sys; int * pf_control; int * pf_demux; int * out; int * s; int * psz_url; int * p_input_item; } ;
typedef TYPE_1__ demux_t ;


 char* DemuxNameFromExtension (char const*,int) ;
 int assert (int ) ;
 int demux_DestroyDemux ;
 char* demux_NameFromMimeType (char*) ;
 int demux_Probe ;
 int free (char*) ;
 char* get_path (char const*) ;
 int * input_GetItem (int *) ;
 int msg_Dbg (int *,char*,char const*,char const*,char*) ;
 int strcasecmp (char const*,char*) ;
 int strcmp (char const*,char*) ;
 void* strdup (char const*) ;
 int stream_CommonDelete (TYPE_1__*) ;
 char* stream_MimeType (int *) ;
 char* strrchr (char*,char) ;
 char* strstr (int *,char*) ;
 scalar_t__ unlikely (int ) ;
 int * vlc_module_load (TYPE_1__*,char*,char const*,int,int ,TYPE_1__*) ;
 TYPE_1__* vlc_stream_CustomNew (int *,int ,int,char*) ;
 struct vlc_demux_private* vlc_stream_Private (TYPE_1__*) ;

demux_t *demux_NewAdvanced( vlc_object_t *p_obj, input_thread_t *p_input,
                            const char *psz_demux, const char *url,
                            stream_t *s, es_out_t *out, bool b_preparsing )
{
    struct vlc_demux_private *priv;
    demux_t *p_demux = vlc_stream_CustomNew(p_obj, demux_DestroyDemux,
                                            sizeof (*priv), "demux");

    if (unlikely(p_demux == ((void*)0)))
        return ((void*)0);

    assert(s != ((void*)0));
    priv = vlc_stream_Private(p_demux);

    if (!strcasecmp( psz_demux, "any" ) || !psz_demux[0])
    {
        char *type = stream_MimeType( s );
        if( type != ((void*)0) )
        {
            psz_demux = demux_NameFromMimeType( type );
            free( type );
        }
    }

    p_demux->p_input_item = p_input ? input_GetItem(p_input) : ((void*)0);
    p_demux->psz_name = strdup( psz_demux );
    if (unlikely(p_demux->psz_name == ((void*)0)))
        goto error;

    p_demux->psz_url = strdup(url);
    if (unlikely(p_demux->psz_url == ((void*)0)))
        goto error;

    const char *p = strstr(p_demux->psz_url, "://");
    p_demux->psz_location = (p != ((void*)0)) ? (p + 3) : "";
    p_demux->psz_filepath = get_path(p_demux->psz_location);

    if( !b_preparsing )
        msg_Dbg( p_obj, "creating demux \"%s\", URL: %s, path: %s",
                 psz_demux, url, p_demux->psz_filepath );

    p_demux->s = s;
    p_demux->out = out;
    p_demux->b_preparsing = b_preparsing;

    p_demux->pf_demux = ((void*)0);
    p_demux->pf_control = ((void*)0);
    p_demux->p_sys = ((void*)0);

    const char *psz_module = ((void*)0);

    if( !strcmp( p_demux->psz_name, "any" ) && p_demux->psz_filepath )
    {
        char const* psz_ext = strrchr( p_demux->psz_filepath, '.' );

        if( psz_ext )
            psz_module = DemuxNameFromExtension( psz_ext + 1, b_preparsing );
    }

    if( psz_module == ((void*)0) )
        psz_module = p_demux->psz_name;

    priv->module = vlc_module_load(p_demux, "demux", psz_module,
        !strcmp(psz_module, p_demux->psz_name), demux_Probe, p_demux);

    if (priv->module == ((void*)0))
    {
        free( p_demux->psz_filepath );
        goto error;
    }

    return p_demux;
error:
    free( p_demux->psz_name );
    stream_CommonDelete( p_demux );
    return ((void*)0);
}
