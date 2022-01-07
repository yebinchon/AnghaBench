
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct vlc_stream_filter_private {int * module; } ;
struct TYPE_9__ {int * psz_filepath; struct TYPE_9__* s; int * psz_url; int p_input_item; } ;
typedef TYPE_1__ stream_t ;


 int StreamDelete ;
 int assert (int ) ;
 int free (int *) ;
 int * module_need (TYPE_1__*,char*,char const*,int) ;
 void* strdup (int *) ;
 int stream_CommonDelete (TYPE_1__*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_object_parent (TYPE_1__*) ;
 TYPE_1__* vlc_stream_CustomNew (int ,int ,int,char*) ;
 struct vlc_stream_filter_private* vlc_stream_Private (TYPE_1__*) ;

stream_t *vlc_stream_FilterNew( stream_t *p_source,
                                const char *psz_stream_filter )
{
    assert(p_source != ((void*)0));

    struct vlc_stream_filter_private *priv;
    stream_t *s = vlc_stream_CustomNew(vlc_object_parent(p_source),
                                       StreamDelete, sizeof (*priv),
                                       "stream filter");
    if( s == ((void*)0) )
        return ((void*)0);

    priv = vlc_stream_Private(s);
    s->p_input_item = p_source->p_input_item;

    if( p_source->psz_url != ((void*)0) )
    {
        s->psz_url = strdup( p_source->psz_url );
        if( unlikely(s->psz_url == ((void*)0)) )
            goto error;

        if( p_source->psz_filepath != ((void*)0) )
            s->psz_filepath = strdup( p_source->psz_filepath );
    }
    s->s = p_source;


    priv->module = module_need(s, "stream_filter", psz_stream_filter, 1);
    if (priv->module == ((void*)0))
        goto error;

    return s;
error:
    free(s->psz_filepath);
    stream_CommonDelete( s );
    return ((void*)0);
}
