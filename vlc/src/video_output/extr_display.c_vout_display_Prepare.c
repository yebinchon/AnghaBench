
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* prepare ) (TYPE_1__*,int *,int *,int ) ;} ;
typedef TYPE_1__ vout_display_t ;
typedef int vlc_tick_t ;
typedef int subpicture_t ;
typedef int picture_t ;


 int assert (int ) ;
 int stub1 (TYPE_1__*,int *,int *,int ) ;
 int * vout_ConvertForDisplay (TYPE_1__*,int *) ;

picture_t *vout_display_Prepare(vout_display_t *vd, picture_t *picture,
                                subpicture_t *subpic, vlc_tick_t date)
{
    assert(subpic == ((void*)0));
    picture = vout_ConvertForDisplay(vd, picture);

    if (picture != ((void*)0) && vd->prepare != ((void*)0))
        vd->prepare(vd, picture, subpic, date);
    return picture;
}
