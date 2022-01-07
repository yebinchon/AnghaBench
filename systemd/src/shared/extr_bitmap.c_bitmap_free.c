
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* bitmaps; } ;
typedef TYPE_1__ Bitmap ;


 int free (TYPE_1__*) ;

void bitmap_free(Bitmap *b) {
        if (!b)
                return;

        free(b->bitmaps);
        free(b);
}
