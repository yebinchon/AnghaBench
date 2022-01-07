
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PICTURES ;
 int VLC_CODEC_I420 ;
 int assert (int) ;
 int fmt ;
 int picture_pool_GetSize (int *) ;
 int * picture_pool_NewFromFormat (int *,int) ;
 int picture_pool_Release (int *) ;
 int * picture_pool_Reserve (int *,int) ;
 int * pool ;
 int * reserve ;
 int test (int) ;
 int video_format_Setup (int *,int ,int,int,int,int,int,int) ;

int main(void)
{
    video_format_Setup(&fmt, VLC_CODEC_I420, 320, 200, 320, 200, 1, 1);

    pool = picture_pool_NewFromFormat(&fmt, PICTURES);
    assert(pool != ((void*)0));
    assert(picture_pool_GetSize(pool) == PICTURES);

    reserve = picture_pool_Reserve(pool, PICTURES / 2);
    assert(reserve != ((void*)0));

    picture_pool_Release(reserve);
    picture_pool_Release(pool);

    test(0);
    test(1);

    return 0;
}
