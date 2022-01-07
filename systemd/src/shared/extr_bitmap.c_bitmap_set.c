
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {unsigned int n_bitmaps; int* bitmaps; int bitmaps_allocated; } ;
typedef TYPE_1__ Bitmap ;


 unsigned int BITMAPS_MAX_ENTRY ;
 unsigned int BITMAP_NUM_TO_OFFSET (unsigned int) ;
 int BITMAP_NUM_TO_REM (unsigned int) ;
 int ENOMEM ;
 int ERANGE ;
 int GREEDY_REALLOC0 (int*,int ,unsigned int) ;
 int UINT64_C (int) ;
 int assert (TYPE_1__*) ;

int bitmap_set(Bitmap *b, unsigned n) {
        uint64_t bitmask;
        unsigned offset;

        assert(b);


        if (n > BITMAPS_MAX_ENTRY)
                return -ERANGE;

        offset = BITMAP_NUM_TO_OFFSET(n);

        if (offset >= b->n_bitmaps) {
                if (!GREEDY_REALLOC0(b->bitmaps, b->bitmaps_allocated, offset + 1))
                        return -ENOMEM;

                b->n_bitmaps = offset + 1;
        }

        bitmask = UINT64_C(1) << BITMAP_NUM_TO_REM(n);

        b->bitmaps[offset] |= bitmask;

        return 0;
}
