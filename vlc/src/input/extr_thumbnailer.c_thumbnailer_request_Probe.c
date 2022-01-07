
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int done; int lock; } ;
typedef TYPE_1__ vlc_thumbnailer_request_t ;


 int VLC_UNUSED (void*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int thumbnailer_request_Probe( void* owner, void* handle )
{
    VLC_UNUSED(owner);
    vlc_thumbnailer_request_t *request = handle;
    vlc_mutex_lock( &request->lock );
    int res = request->done;
    vlc_mutex_unlock( &request->lock );
    return res;
}
