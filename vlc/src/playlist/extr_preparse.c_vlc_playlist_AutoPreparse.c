
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ auto_preparse; } ;
typedef TYPE_1__ vlc_playlist_t ;
typedef int input_item_t ;


 int input_item_IsPreparsed (int *) ;
 int vlc_playlist_Preparse (TYPE_1__*,int *) ;

void
vlc_playlist_AutoPreparse(vlc_playlist_t *playlist, input_item_t *input)
{
    if (playlist->auto_preparse && !input_item_IsPreparsed(input))
        vlc_playlist_Preparse(playlist, input);
}
