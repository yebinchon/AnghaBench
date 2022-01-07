
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CloseExtraDll () ;
 int dll_close (int ) ;
 int dll_handle ;
 int omx_core_mutex ;
 scalar_t__ omx_refcount ;
 int pf_deinit () ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void DeinitOmxCore(void)
{
    vlc_mutex_lock( &omx_core_mutex );
    omx_refcount--;
    if( omx_refcount == 0 )
    {
        pf_deinit();
        dll_close( dll_handle );
        CloseExtraDll();
    }
    vlc_mutex_unlock( &omx_core_mutex );
}
