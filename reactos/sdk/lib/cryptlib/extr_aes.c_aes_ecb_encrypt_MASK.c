#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ulong32 ;
struct TYPE_3__ {int Nr; int* eK; } ;
typedef  TYPE_1__ aes_key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned char*) ; 
 int FUNC2 (size_t) ; 
 int FUNC3 (size_t) ; 
 int FUNC4 (size_t) ; 
 int FUNC5 (size_t) ; 
 int* Te4_0 ; 
 int* Te4_1 ; 
 int* Te4_2 ; 
 int* Te4_3 ; 
 size_t FUNC6 (int,int) ; 

void FUNC7(const unsigned char *pt, unsigned char *ct, aes_key *skey)
{
    ulong32 s0, s1, s2, s3, t0, t1, t2, t3, *rk;
    int Nr, r;

    Nr = skey->Nr;
    rk = skey->eK;

    FUNC0(s0, pt      ); s0 ^= rk[0];
    FUNC0(s1, pt  +  4); s1 ^= rk[1];
    FUNC0(s2, pt  +  8); s2 ^= rk[2];
    FUNC0(s3, pt  + 12); s3 ^= rk[3];

    r = Nr >> 1;
    for (;;) {
        t0 =
            FUNC2(FUNC6(s0, 3)) ^
            FUNC3(FUNC6(s1, 2)) ^
            FUNC4(FUNC6(s2, 1)) ^
            FUNC5(FUNC6(s3, 0)) ^
            rk[4];
        t1 =
            FUNC2(FUNC6(s1, 3)) ^
            FUNC3(FUNC6(s2, 2)) ^
            FUNC4(FUNC6(s3, 1)) ^
            FUNC5(FUNC6(s0, 0)) ^
            rk[5];
        t2 =
            FUNC2(FUNC6(s2, 3)) ^
            FUNC3(FUNC6(s3, 2)) ^
            FUNC4(FUNC6(s0, 1)) ^
            FUNC5(FUNC6(s1, 0)) ^
            rk[6];
        t3 =
            FUNC2(FUNC6(s3, 3)) ^
            FUNC3(FUNC6(s0, 2)) ^
            FUNC4(FUNC6(s1, 1)) ^
            FUNC5(FUNC6(s2, 0)) ^
            rk[7];

        rk += 8;
        if (--r == 0) {
            break;
        }

        s0 =
            FUNC2(FUNC6(t0, 3)) ^
            FUNC3(FUNC6(t1, 2)) ^
            FUNC4(FUNC6(t2, 1)) ^
            FUNC5(FUNC6(t3, 0)) ^
            rk[0];
        s1 =
            FUNC2(FUNC6(t1, 3)) ^
            FUNC3(FUNC6(t2, 2)) ^
            FUNC4(FUNC6(t3, 1)) ^
            FUNC5(FUNC6(t0, 0)) ^
            rk[1];
        s2 =
            FUNC2(FUNC6(t2, 3)) ^
            FUNC3(FUNC6(t3, 2)) ^
            FUNC4(FUNC6(t0, 1)) ^
            FUNC5(FUNC6(t1, 0)) ^
            rk[2];
        s3 =
            FUNC2(FUNC6(t3, 3)) ^
            FUNC3(FUNC6(t0, 2)) ^
            FUNC4(FUNC6(t1, 1)) ^
            FUNC5(FUNC6(t2, 0)) ^
            rk[3];
    }

    s0 =
        (Te4_3[FUNC6(t0, 3)]) ^
        (Te4_2[FUNC6(t1, 2)]) ^
        (Te4_1[FUNC6(t2, 1)]) ^
        (Te4_0[FUNC6(t3, 0)]) ^
        rk[0];
    FUNC1(s0, ct);
    s1 =
        (Te4_3[FUNC6(t1, 3)]) ^
        (Te4_2[FUNC6(t2, 2)]) ^
        (Te4_1[FUNC6(t3, 1)]) ^
        (Te4_0[FUNC6(t0, 0)]) ^
        rk[1];
    FUNC1(s1, ct+4);
    s2 =
        (Te4_3[FUNC6(t2, 3)]) ^
        (Te4_2[FUNC6(t3, 2)]) ^
        (Te4_1[FUNC6(t0, 1)]) ^
        (Te4_0[FUNC6(t1, 0)]) ^
        rk[2];
    FUNC1(s2, ct+8);
    s3 =
        (Te4_3[FUNC6(t3, 3)]) ^
        (Te4_2[FUNC6(t0, 2)]) ^
        (Te4_1[FUNC6(t1, 1)]) ^
        (Te4_0[FUNC6(t2, 0)]) ^
        rk[3];
    FUNC1(s3, ct+12);
}