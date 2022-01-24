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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (int) ; 

void FUNC8(uint8_t* sectors, uint16_t num_stripes, ULONG sector_size, uint16_t missing1, uint16_t missing2, uint8_t* out) {
    if (missing1 == num_stripes - 2 || missing2 == num_stripes - 2) { // reconstruct from q and data
        uint16_t missing = missing1 == (num_stripes - 2) ? missing2 : missing1;
        uint16_t stripe;

        stripe = num_stripes - 3;

        if (stripe == missing)
            FUNC1(out, sector_size);
        else
            FUNC0(out, sectors + (stripe * sector_size), sector_size);

        do {
            stripe--;

            FUNC4(out, sector_size);

            if (stripe != missing)
                FUNC2(out, sectors + (stripe * sector_size), sector_size);
        } while (stripe > 0);

        FUNC2(out, sectors + ((num_stripes - 1) * sector_size), sector_size);

        if (missing != 0)
            FUNC3(out, (uint8_t)missing, sector_size);
    } else { // reconstruct from p and q
        uint16_t x, y, stripe;
        uint8_t gyx, gx, denom, a, b, *p, *q, *pxy, *qxy;
        uint32_t j;

        stripe = num_stripes - 3;

        pxy = out + sector_size;
        qxy = out;

        if (stripe == missing1 || stripe == missing2) {
            FUNC1(qxy, sector_size);
            FUNC1(pxy, sector_size);

            if (stripe == missing1)
                x = stripe;
            else
                y = stripe;
        } else {
            FUNC0(qxy, sectors + (stripe * sector_size), sector_size);
            FUNC0(pxy, sectors + (stripe * sector_size), sector_size);
        }

        do {
            stripe--;

            FUNC4(qxy, sector_size);

            if (stripe != missing1 && stripe != missing2) {
                FUNC2(qxy, sectors + (stripe * sector_size), sector_size);
                FUNC2(pxy, sectors + (stripe * sector_size), sector_size);
            } else if (stripe == missing1)
                x = stripe;
            else if (stripe == missing2)
                y = stripe;
        } while (stripe > 0);

        gyx = FUNC7(y > x ? (y-x) : (255-x+y));
        gx = FUNC7(255-x);

        denom = FUNC5(1, gyx ^ 1);
        a = FUNC6(gyx, denom);
        b = FUNC6(gx, denom);

        p = sectors + ((num_stripes - 2) * sector_size);
        q = sectors + ((num_stripes - 1) * sector_size);

        for (j = 0; j < sector_size; j++) {
            *qxy = FUNC6(a, *p ^ *pxy) ^ FUNC6(b, *q ^ *qxy);

            p++;
            q++;
            pxy++;
            qxy++;
        }

        FUNC2(out + sector_size, out, sector_size);
        FUNC2(out + sector_size, sectors + ((num_stripes - 2) * sector_size), sector_size);
    }
}