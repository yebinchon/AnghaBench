
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * parser; } ;
typedef TYPE_1__ libvlc_priv_t ;
typedef int libvlc_int_t ;
typedef int input_preparser_callbacks_t ;
typedef int input_item_t ;
typedef int input_item_meta_request_option_t ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int input_preparser_Push (int *,int *,int ,int const*,void*,int,void*) ;
 TYPE_1__* libvlc_priv (int *) ;
 scalar_t__ unlikely (int ) ;

int vlc_MetadataRequest(libvlc_int_t *libvlc, input_item_t *item,
                        input_item_meta_request_option_t i_options,
                        const input_preparser_callbacks_t *cbs,
                        void *cbs_userdata,
                        int timeout, void *id)
{
    libvlc_priv_t *priv = libvlc_priv(libvlc);

    if (unlikely(priv->parser == ((void*)0)))
        return VLC_ENOMEM;

    input_preparser_Push( priv->parser, item, i_options, cbs, cbs_userdata, timeout, id );
    return VLC_SUCCESS;

}
