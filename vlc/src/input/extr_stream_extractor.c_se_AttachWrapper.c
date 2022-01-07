
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct stream_extractor_private {TYPE_1__* wrapper; TYPE_1__* source; scalar_t__ (* pf_init ) (struct stream_extractor_private*,TYPE_1__*) ;} ;
struct TYPE_9__ {struct stream_extractor_private* p_sys; int p_input_item; } ;
typedef TYPE_1__ stream_t ;


 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int se_StreamDelete ;
 int stream_CommonDelete (TYPE_1__*) ;
 TYPE_1__* stream_FilterChainNew (TYPE_1__*,char*) ;
 scalar_t__ stub1 (struct stream_extractor_private*,TYPE_1__*) ;
 scalar_t__ unlikely (int) ;
 int vlc_object_parent (TYPE_1__*) ;
 TYPE_1__* vlc_stream_CommonNew (int ,int ) ;

__attribute__((used)) static int
se_AttachWrapper( struct stream_extractor_private* priv, stream_t* source )
{
    stream_t* s = vlc_stream_CommonNew( vlc_object_parent(source),
                                        se_StreamDelete );

    if( unlikely( !s ) )
        return VLC_ENOMEM;

    if( priv->pf_init( priv, s ) )
    {
        stream_CommonDelete( s );
        return VLC_EGENERIC;
    }

    priv->wrapper = s;
    priv->wrapper->p_input_item = source->p_input_item;
    priv->wrapper->p_sys = priv;

    priv->source = source;

    priv->wrapper = stream_FilterChainNew( priv->wrapper, "cache" );
    return VLC_SUCCESS;
}
