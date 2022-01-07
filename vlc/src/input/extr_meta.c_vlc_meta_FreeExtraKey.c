
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VLC_UNUSED (void*) ;
 int free (void*) ;

__attribute__((used)) static void vlc_meta_FreeExtraKey( void *p_data, void *p_obj )
{
    VLC_UNUSED( p_obj );
    free( p_data );
}
