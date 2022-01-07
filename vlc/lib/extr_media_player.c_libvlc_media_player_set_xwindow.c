
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int libvlc_media_player_t ;


 int assert (int ) ;
 int var_SetInteger (int *,char*,scalar_t__) ;
 int var_SetString (int *,char*,char*) ;

void libvlc_media_player_set_xwindow( libvlc_media_player_t *p_mi,
                                      uint32_t drawable )
{
    assert (p_mi != ((void*)0));

    var_SetString (p_mi, "dec-dev", "");
    var_SetString (p_mi, "vout", "");
    var_SetString (p_mi, "window", drawable ? "embed-xid,any" : "");
    var_SetInteger (p_mi, "drawable-xid", drawable);
}
