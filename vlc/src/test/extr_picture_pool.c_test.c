
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* p; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_7__ {void* p_pixels; } ;


 int PICTURES ;
 int assert (int) ;
 int fmt ;
 int picture_Hold (TYPE_2__*) ;
 int picture_Release (TYPE_2__*) ;
 TYPE_2__* picture_pool_Get (int *) ;
 int * picture_pool_NewFromFormat (int *,int) ;
 int picture_pool_Release (int *) ;
 int * picture_pool_Reserve (int *,int) ;
 TYPE_2__* picture_pool_Wait (int *) ;
 int * pool ;
 int * reserve ;

__attribute__((used)) static void test(bool zombie)
{
    picture_t *pics[PICTURES];

    pool = picture_pool_NewFromFormat(&fmt, PICTURES);
    assert(pool != ((void*)0));

    for (unsigned i = 0; i < PICTURES; i++) {
        pics[i] = picture_pool_Get(pool);
        assert(pics[i] != ((void*)0));
    }

    for (unsigned i = 0; i < PICTURES; i++)
        assert(picture_pool_Get(pool) == ((void*)0));




    for (unsigned i = 0; i < PICTURES / 2; i++)
        picture_Hold(pics[i]);

    for (unsigned i = 0; i < PICTURES / 2; i++)
        picture_Release(pics[i]);

    for (unsigned i = 0; i < PICTURES; i++) {
        void *plane = pics[i]->p[0].p_pixels;
        assert(plane != ((void*)0));
        picture_Release(pics[i]);

        pics[i] = picture_pool_Get(pool);
        assert(pics[i] != ((void*)0));
        assert(pics[i]->p[0].p_pixels == plane);
    }

    for (unsigned i = 0; i < PICTURES; i++)
        picture_Release(pics[i]);

    for (unsigned i = 0; i < PICTURES; i++) {
        pics[i] = picture_pool_Wait(pool);
        assert(pics[i] != ((void*)0));
    }

    for (unsigned i = 0; i < PICTURES; i++)
        picture_Release(pics[i]);

    reserve = picture_pool_Reserve(pool, PICTURES / 2);
    assert(reserve != ((void*)0));

    for (unsigned i = 0; i < PICTURES / 2; i++) {
        pics[i] = picture_pool_Get(pool);
        assert(pics[i] != ((void*)0));
    }

    for (unsigned i = PICTURES / 2; i < PICTURES; i++) {
        assert(picture_pool_Get(pool) == ((void*)0));
        pics[i] = picture_pool_Get(reserve);
        assert(pics[i] != ((void*)0));
    }

    if (!zombie)
        for (unsigned i = 0; i < PICTURES; i++)
            picture_Release(pics[i]);

    picture_pool_Release(reserve);
    picture_pool_Release(pool);

    if (zombie)
        for (unsigned i = 0; i < PICTURES; i++)
            picture_Release(pics[i]);
}
