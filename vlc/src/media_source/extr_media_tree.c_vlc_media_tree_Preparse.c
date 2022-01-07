
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int i_preparse_depth; } ;
typedef TYPE_1__ vlc_media_tree_t ;
typedef TYPE_1__ libvlc_int_t ;
typedef TYPE_1__ input_item_t ;


 int META_REQUEST_OPTION_DO_INTERACT ;
 int META_REQUEST_OPTION_SCOPE_ANY ;
 int VLC_UNUSED (TYPE_1__*) ;
 TYPE_1__* input_preparser_callbacks ;
 int vlc_MetadataRequest (TYPE_1__*,TYPE_1__*,int,TYPE_1__**,TYPE_1__*,int ,int *) ;

void
vlc_media_tree_Preparse(vlc_media_tree_t *tree, libvlc_int_t *libvlc,
                        input_item_t *media)
{






    media->i_preparse_depth = 1;
    vlc_MetadataRequest(libvlc, media, META_REQUEST_OPTION_SCOPE_ANY |
                        META_REQUEST_OPTION_DO_INTERACT,
                        &input_preparser_callbacks, tree, 0, ((void*)0));

}
