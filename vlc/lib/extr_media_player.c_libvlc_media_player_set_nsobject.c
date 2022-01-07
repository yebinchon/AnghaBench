
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;


 int assert (int) ;
 int libvlc_printerr (char*) ;
 int var_SetAddress (int *,char*,void*) ;
 int var_SetString (int *,char*,char*) ;

void libvlc_media_player_set_nsobject( libvlc_media_player_t *p_mi,
                                        void * drawable )
{
    assert (p_mi != ((void*)0));






    (void)drawable;
    libvlc_printerr ("can't set nsobject: APPLE build required");
    assert(0);
    var_SetString (p_mi, "vout", "none");
    var_SetString (p_mi, "window", "none");

}
