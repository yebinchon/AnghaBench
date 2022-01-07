
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ LBASE ;
 scalar_t__ LCOUNT ;
 int NCOUNT ;
 scalar_t__ SBASE ;
 scalar_t__ SCOUNT ;
 scalar_t__ TBASE ;
 int TCOUNT ;
 scalar_t__ VBASE ;
 scalar_t__ VCOUNT ;

__attribute__((used)) static int hangul_pair_compose(uint32_t *code, uint32_t a, uint32_t b)
{
    if (a >= SBASE && a < (SBASE + SCOUNT) && b >= TBASE && b < (TBASE + TCOUNT)) {

        *code = a + (b - TBASE);
        return 3;
    } else if (a >= LBASE && a < (LBASE + LCOUNT) && b >= VBASE && b < (VBASE + VCOUNT)) {

        int li = a - LBASE;
        int vi = b - VBASE;
        *code = SBASE + li * NCOUNT + vi * TCOUNT;
        return 2;
    } else {
        return 0;
    }
}
