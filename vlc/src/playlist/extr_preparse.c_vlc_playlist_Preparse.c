
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int libvlc; } ;
typedef TYPE_1__ vlc_playlist_t ;
typedef TYPE_1__ input_item_t ;


 int META_REQUEST_OPTION_FETCH_LOCAL ;
 int META_REQUEST_OPTION_SCOPE_LOCAL ;
 int VLC_UNUSED (TYPE_1__*) ;
 TYPE_1__* input_preparser_callbacks ;
 int vlc_MetadataRequest (int ,TYPE_1__*,int,TYPE_1__**,TYPE_1__*,int,int *) ;

void
vlc_playlist_Preparse(vlc_playlist_t *playlist, input_item_t *input)
{






    vlc_MetadataRequest(playlist->libvlc, input,
                        META_REQUEST_OPTION_SCOPE_LOCAL |
                        META_REQUEST_OPTION_FETCH_LOCAL,
                        &input_preparser_callbacks, playlist, -1, ((void*)0));

}
