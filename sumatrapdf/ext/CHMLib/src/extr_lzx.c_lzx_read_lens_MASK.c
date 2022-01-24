#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lzx_bits {int bb; int bl; int* ip; } ;
struct LZXstate {int dummy; } ;
typedef  int /*<<< orphan*/  UWORD ;
typedef  int ULONG ;
typedef  int UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRETREE ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct LZXstate *pState, UBYTE *lens, ULONG first, ULONG last, struct lzx_bits *lb) {
    ULONG i,j, x,y;
    int z;

    register ULONG bitbuf = lb->bb;
    register int bitsleft = lb->bl;
    UBYTE *inpos = lb->ip;
    UWORD *hufftbl;

    for (x = 0; x < 20; x++) {
        FUNC2(y, 4);
        FUNC1(PRETREE)[x] = y;
    }
    FUNC0(PRETREE);

    for (x = first; x < last; ) {
        FUNC3(PRETREE, z);
        if (z == 17) {
            FUNC2(y, 4); y += 4;
            while (y--) lens[x++] = 0;
        }
        else if (z == 18) {
            FUNC2(y, 5); y += 20;
            while (y--) lens[x++] = 0;
        }
        else if (z == 19) {
            FUNC2(y, 1); y += 4;
            FUNC3(PRETREE, z);
            z = lens[x] - z; if (z < 0) z += 17;
            while (y--) lens[x++] = z;
        }
        else {
            z = lens[x] - z; if (z < 0) z += 17;
            lens[x++] = z;
        }
    }

    lb->bb = bitbuf;
    lb->bl = bitsleft;
    lb->ip = inpos;
    return 0;
}