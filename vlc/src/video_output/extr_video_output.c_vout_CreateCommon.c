
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * p; } ;
typedef TYPE_1__ vout_thread_t ;
typedef int vout_thread_sys_t ;
typedef int vlc_object_t ;


 TYPE_1__* vlc_custom_create (int *,int,char*) ;
 int vout_CreateVars (TYPE_1__*) ;

__attribute__((used)) static vout_thread_t *vout_CreateCommon(vlc_object_t *object)
{

    vout_thread_t *vout = vlc_custom_create(object,
                                            sizeof(*vout) + sizeof(*vout->p),
                                            "video output");
    if (!vout)
        return ((void*)0);

    vout_CreateVars(vout);

    vout_thread_sys_t *sys = (vout_thread_sys_t *)&vout[1];

    vout->p = sys;
    return vout;
}
