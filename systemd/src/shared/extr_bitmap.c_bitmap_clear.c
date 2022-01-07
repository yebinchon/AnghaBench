
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bitmaps_allocated; scalar_t__ n_bitmaps; int bitmaps; } ;
typedef TYPE_1__ Bitmap ;


 int mfree (int ) ;

void bitmap_clear(Bitmap *b) {
        if (!b)
                return;

        b->bitmaps = mfree(b->bitmaps);
        b->n_bitmaps = 0;
        b->bitmaps_allocated = 0;
}
