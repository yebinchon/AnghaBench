
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int n_bitmaps; int bitmaps_allocated; int bitmaps; } ;
typedef TYPE_1__ Bitmap ;


 TYPE_1__* bitmap_new () ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int newdup (int ,int ,int ) ;
 int uint64_t ;

Bitmap *bitmap_copy(Bitmap *b) {
        Bitmap *ret;

        ret = bitmap_new();
        if (!ret)
                return ((void*)0);

        ret->bitmaps = newdup(uint64_t, b->bitmaps, b->n_bitmaps);
        if (!ret->bitmaps)
                return mfree(ret);

        ret->n_bitmaps = ret->bitmaps_allocated = b->n_bitmaps;
        return ret;
}
