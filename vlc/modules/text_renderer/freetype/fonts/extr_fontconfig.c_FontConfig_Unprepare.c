
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FcConfigDestroy (int ) ;
 int assert (int) ;
 int config ;
 int lock ;
 scalar_t__ refs ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void FontConfig_Unprepare(void)
{
    vlc_mutex_lock( &lock );
    assert( refs > 0 );
    if( --refs == 0 )
        FcConfigDestroy( config );

    vlc_mutex_unlock( &lock );
}
