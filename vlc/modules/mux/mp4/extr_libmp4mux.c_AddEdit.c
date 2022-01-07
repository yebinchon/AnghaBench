
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int bo_t ;


 int bo_add_16be (int *,int) ;
 int bo_add_32be (int *,int ) ;
 int bo_add_64be (int *,int ) ;

__attribute__((used)) static void AddEdit(bo_t *elst,
                    int64_t i_movie_scaled_duration,
                    int64_t i_media_scaled_time,
                    bool b_64_ext)
{
    if(b_64_ext)
    {
        bo_add_64be(elst, i_movie_scaled_duration);
        bo_add_64be(elst, i_media_scaled_time);
    }
    else
    {
        bo_add_32be(elst, i_movie_scaled_duration);
        bo_add_32be(elst, i_media_scaled_time);
    }
    bo_add_16be(elst, 1);
    bo_add_16be(elst, 0);
}
