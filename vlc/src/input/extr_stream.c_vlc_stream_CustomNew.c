
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef scalar_t__ vlc_iconv_t ;
struct TYPE_8__ {int * p_input_item; int * p_sys; int * pf_control; int * pf_seek; int * pf_readdir; int * pf_block; int * pf_read; int * s; int * psz_url; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_7__ {int char_width; int little_endian; scalar_t__ conv; } ;
struct TYPE_9__ {void (* destroy ) (TYPE_2__*) ;int eof; TYPE_1__ text; scalar_t__ offset; int * peek; int * block; TYPE_2__ stream; } ;
typedef TYPE_3__ stream_priv_t ;


 int assert (int ) ;
 scalar_t__ unlikely (int ) ;
 TYPE_3__* vlc_custom_create (int *,int,char const*) ;

stream_t *vlc_stream_CustomNew(vlc_object_t *parent,
                               void (*destroy)(stream_t *), size_t size,
                               const char *type_name)
{
    stream_priv_t *priv = vlc_custom_create(parent, sizeof (*priv) + size,
                                            type_name);
    if (unlikely(priv == ((void*)0)))
        return ((void*)0);

    stream_t *s = &priv->stream;

    s->psz_url = ((void*)0);
    s->s = ((void*)0);
    s->pf_read = ((void*)0);
    s->pf_block = ((void*)0);
    s->pf_readdir = ((void*)0);
    s->pf_seek = ((void*)0);
    s->pf_control = ((void*)0);
    s->p_sys = ((void*)0);
    s->p_input_item = ((void*)0);
    assert(destroy != ((void*)0));
    priv->destroy = destroy;
    priv->block = ((void*)0);
    priv->peek = ((void*)0);
    priv->offset = 0;
    priv->eof = 0;


    priv->text.conv = (vlc_iconv_t)(-1);
    priv->text.char_width = 1;
    priv->text.little_endian = 0;

    return s;
}
