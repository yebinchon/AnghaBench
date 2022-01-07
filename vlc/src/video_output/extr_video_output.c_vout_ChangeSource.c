
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p; } ;
typedef TYPE_1__ vout_thread_t ;
struct TYPE_5__ {int original; } ;
typedef TYPE_2__ vout_thread_sys_t ;
typedef int video_format_t ;


 scalar_t__ video_format_IsSimilar (int const*,int *) ;

int vout_ChangeSource( vout_thread_t *vout, const video_format_t *original )
{
    vout_thread_sys_t *sys = vout->p;




    if (video_format_IsSimilar(original, &sys->original)) {

        return 0;
    }

    return -1;
}
