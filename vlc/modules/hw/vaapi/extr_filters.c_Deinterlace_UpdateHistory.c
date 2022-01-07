
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_pics; int sz; int ** pp_cur_pic; int ** pp_pics; } ;
struct deint_data {TYPE_1__ history; } ;
typedef int picture_t ;


 int memmove (int **,int **,int) ;
 int picture_Release (int *) ;

__attribute__((used)) static picture_t *
Deinterlace_UpdateHistory(struct deint_data * p_deint_data, picture_t * src)
{
    if (p_deint_data->history.num_pics == p_deint_data->history.sz)
    {
        picture_Release(*p_deint_data->history.pp_pics);
        memmove(p_deint_data->history.pp_pics, p_deint_data->history.pp_pics + 1,
                --p_deint_data->history.num_pics * sizeof(picture_t *));
    }
    p_deint_data->history.pp_pics[p_deint_data->history.num_pics++] = src;

    return *p_deint_data->history.pp_cur_pic;
}
