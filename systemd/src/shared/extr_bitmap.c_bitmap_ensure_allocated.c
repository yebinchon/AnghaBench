
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Bitmap ;


 int ENOMEM ;
 int assert (int **) ;
 int * bitmap_new () ;

int bitmap_ensure_allocated(Bitmap **b) {
        Bitmap *a;

        assert(b);

        if (*b)
                return 0;

        a = bitmap_new();
        if (!a)
                return -ENOMEM;

        *b = a;

        return 0;
}
