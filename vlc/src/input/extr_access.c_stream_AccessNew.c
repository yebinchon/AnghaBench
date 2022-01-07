
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_object_t ;
struct vlc_access_stream_private {int * input; } ;
struct TYPE_11__ {struct TYPE_11__* p_sys; int pf_control; int pf_seek; int * pf_read; int * pf_block; int * psz_url; int * p_input_item; } ;
typedef TYPE_1__ stream_t ;
typedef int input_thread_t ;
typedef int es_out_t ;


 int AStreamControl ;
 int AStreamDestroy ;
 int * AStreamReadBlock ;
 int * AStreamReadStream ;
 int AStreamSeek ;
 int VLC_OBJECT (TYPE_1__*) ;
 TYPE_1__* access_New (int *,int *,int *,int,char const*) ;
 int * input_GetItem (int *) ;
 int * strdup (int *) ;
 TYPE_1__* stream_FilterChainNew (TYPE_1__*,char*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_object_delete (TYPE_1__*) ;
 TYPE_1__* vlc_stream_CustomNew (int ,int ,int,char*) ;
 int vlc_stream_Delete (TYPE_1__*) ;
 struct vlc_access_stream_private* vlc_stream_Private (TYPE_1__*) ;

stream_t *stream_AccessNew(vlc_object_t *parent, input_thread_t *input,
                           es_out_t *out, bool preparsing, const char *url)
{
    stream_t *access = access_New(parent, input, out, preparsing, url);
    if (access == ((void*)0))
        return ((void*)0);

    stream_t *s;

    if (access->pf_block != ((void*)0) || access->pf_read != ((void*)0))
    {
        struct vlc_access_stream_private *priv;
        s = vlc_stream_CustomNew(VLC_OBJECT(access), AStreamDestroy,
                                 sizeof(*priv), "stream");

        if (unlikely(s == ((void*)0)))
        {
            vlc_stream_Delete(access);
            return ((void*)0);
        }
        priv = vlc_stream_Private(s);
        priv->input = input;

        s->p_input_item = input ? input_GetItem(input) : ((void*)0);
        s->psz_url = strdup(access->psz_url);
        if (unlikely(s->psz_url == ((void*)0)))
        {
            vlc_object_delete(s);
            vlc_stream_Delete(access);
            return ((void*)0);
        }

        if (access->pf_block != ((void*)0))
            s->pf_block = AStreamReadBlock;
        if (access->pf_read != ((void*)0))
            s->pf_read = AStreamReadStream;

        s->pf_seek = AStreamSeek;
        s->pf_control = AStreamControl;
        s->p_sys = access;

        s = stream_FilterChainNew(s, "prefetch,cache");
    }
    else
        s = access;

    return s;
}
