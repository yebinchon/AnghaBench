
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int filter_t ;


 int FilterRestartCallback ;
 int VLC_SUCCESS ;
 int filter_DelProxyCallbacks (int *,int *,int ) ;

__attribute__((used)) static int ThreadDelFilterCallbacks(filter_t *filter, void *opaque)
{
    filter_DelProxyCallbacks((vlc_object_t *)opaque, filter,
                             FilterRestartCallback);
    return VLC_SUCCESS;
}
