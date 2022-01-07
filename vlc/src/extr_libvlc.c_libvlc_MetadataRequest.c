
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * parser; } ;
typedef TYPE_1__ libvlc_priv_t ;
typedef int libvlc_int_t ;
typedef int input_preparser_callbacks_t ;
struct TYPE_7__ {int i_preparse_depth; int lock; } ;
typedef TYPE_2__ input_item_t ;
typedef int input_item_meta_request_option_t ;


 int META_REQUEST_OPTION_SCOPE_ANY ;
 int VLC_ENOMEM ;
 int assert (int) ;
 TYPE_1__* libvlc_priv (int *) ;
 scalar_t__ unlikely (int ) ;
 int vlc_MetadataRequest (int *,TYPE_2__*,int,int const*,void*,int,void*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int libvlc_MetadataRequest(libvlc_int_t *libvlc, input_item_t *item,
                           input_item_meta_request_option_t i_options,
                           const input_preparser_callbacks_t *cbs,
                           void *cbs_userdata,
                           int timeout, void *id)
{
    libvlc_priv_t *priv = libvlc_priv(libvlc);
    assert(i_options & META_REQUEST_OPTION_SCOPE_ANY);

    if (unlikely(priv->parser == ((void*)0)))
        return VLC_ENOMEM;

    vlc_mutex_lock( &item->lock );
    if( item->i_preparse_depth == 0 )
        item->i_preparse_depth = 1;
    vlc_mutex_unlock( &item->lock );

    return vlc_MetadataRequest(libvlc, item, i_options, cbs, cbs_userdata, timeout, id);
}
