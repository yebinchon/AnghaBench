
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int imem_sys_t ;


 int CloseCommon (int *) ;

__attribute__((used)) static void CloseAccess(vlc_object_t *object)
{
    stream_t *access = (stream_t *)object;

    CloseCommon((imem_sys_t*)access->p_sys);
}
