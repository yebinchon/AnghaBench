
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int VLC_UNUSED (int *) ;
 int rsvg_term () ;

__attribute__((used)) static void CloseDecoder( vlc_object_t *p_this )
{
    VLC_UNUSED( p_this );

    rsvg_term();

}
