
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int vlc_viewpoint_t ;


 int var_SetAddress (int *,char*,void*) ;

__attribute__((used)) static void VoutViewpointMoved(void *sys, const vlc_viewpoint_t *vp)
{
    vout_thread_t *vout = sys;
    var_SetAddress(vout, "viewpoint-moved", (void*)vp);
}
