
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int filter_t ;


 int RestartSubFilterCallback ;
 int VLC_SUCCESS ;
 int filter_AddProxyCallbacks (int *,int *,int ) ;

__attribute__((used)) static int SubFilterAddProxyCallbacks(filter_t *filter, void *opaque)
{
    filter_AddProxyCallbacks((vlc_object_t *)opaque, filter,
                             RestartSubFilterCallback);
    return VLC_SUCCESS;
}
