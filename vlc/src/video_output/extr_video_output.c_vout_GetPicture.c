
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_10__ {int format; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_8__ {int original; int display_pool; int dummy; } ;


 int assert (int) ;
 scalar_t__ likely (int ) ;
 int picture_Reset (TYPE_3__*) ;
 TYPE_3__* picture_pool_Wait (int ) ;
 int video_format_CopyCropAr (int *,int *) ;

picture_t *vout_GetPicture(vout_thread_t *vout)
{
    assert(!vout->p->dummy);
    picture_t *picture = picture_pool_Wait(vout->p->display_pool);
    if (likely(picture != ((void*)0))) {
        picture_Reset(picture);
        video_format_CopyCropAr(&picture->format, &vout->p->original);
    }
    return picture;
}
