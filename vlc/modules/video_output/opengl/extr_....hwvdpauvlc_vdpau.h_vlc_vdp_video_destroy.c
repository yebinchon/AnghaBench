
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* destroy ) (TYPE_3__*) ;} ;
struct TYPE_4__ {TYPE_3__ context; } ;
typedef TYPE_1__ vlc_vdp_video_field_t ;


 int stub1 (TYPE_3__*) ;

__attribute__((used)) static inline void vlc_vdp_video_destroy(vlc_vdp_video_field_t *f)
{
    f->context.destroy(&f->context);
}
