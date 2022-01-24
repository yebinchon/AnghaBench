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
struct TYPE_3__ {int Nr; int* dK; } ;
typedef  TYPE_1__ aes_key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned char*) ; 
 int FUNC2 (size_t) ; 
 int FUNC3 (size_t) ; 
 int FUNC4 (size_t) ; 
 int FUNC5 (size_t) ; 
 int* Td4 ; 
 size_t FUNC6 (int,int) ; 

void FUNC7(const unsigned char *ct, unsigned char *pt, aes_key *skey)
{
    ulong32 s0, s1, s2, s3, t0, t1, t2, t3, *rk;
    int Nr, r;

    Nr = skey->Nr;
    rk = skey->dK;

    FUNC0(s0, ct      ); s0 ^= rk[0];
    FUNC0(s1, ct  +  4); s1 ^= rk[1];
    FUNC0(s2, ct  +  8); s2 ^= rk[2];
    FUNC0(s3, ct  + 12); s3 ^= rk[3];

    r = Nr >> 1;
    for (;;) {

        t0 =
            FUNC2(FUNC6(s0, 3)) ^
            FUNC3(FUNC6(s3, 2)) ^
            FUNC4(FUNC6(s2, 1)) ^
            FUNC5(FUNC6(s1, 0)) ^
            rk[4];
        t1 =
            FUNC2(FUNC6(s1, 3)) ^
            FUNC3(FUNC6(s0, 2)) ^
            FUNC4(FUNC6(s3, 1)) ^
            FUNC5(FUNC6(s2, 0)) ^
            rk[5];
        t2 =
            FUNC2(FUNC6(s2, 3)) ^
            FUNC3(FUNC6(s1, 2)) ^
            FUNC4(FUNC6(s0, 1)) ^
            FUNC5(FUNC6(s3, 0)) ^
            rk[6];
        t3 =
            FUNC2(FUNC6(s3, 3)) ^
            FUNC3(FUNC6(s2, 2)) ^
            FUNC4(FUNC6(s1, 1)) ^
            FUNC5(FUNC6(s0, 0)) ^
            rk[7];

        rk += 8;
        if (--r == 0) {
            break;
        }


        s0 =
            FUNC2(FUNC6(t0, 3)) ^
            FUNC3(FUNC6(t3, 2)) ^
            FUNC4(FUNC6(t2, 1)) ^
            FUNC5(FUNC6(t1, 0)) ^
            rk[0];
        s1 =
            FUNC2(FUNC6(t1, 3)) ^
            FUNC3(FUNC6(t0, 2)) ^
            FUNC4(FUNC6(t3, 1)) ^
            FUNC5(FUNC6(t2, 0)) ^
            rk[1];
        s2 =
            FUNC2(FUNC6(t2, 3)) ^
            FUNC3(FUNC6(t1, 2)) ^
            FUNC4(FUNC6(t0, 1)) ^
            FUNC5(FUNC6(t3, 0)) ^
            rk[2];
        s3 =
            FUNC2(FUNC6(t3, 3)) ^
            FUNC3(FUNC6(t2, 2)) ^
            FUNC4(FUNC6(t1, 1)) ^
            FUNC5(FUNC6(t0, 0)) ^
            rk[3];
    }

    s0 =
        (Td4[FUNC6(t0, 3)] & 0xff000000) ^
        (Td4[FUNC6(t3, 2)] & 0x00ff0000) ^
        (Td4[FUNC6(t2, 1)] & 0x0000ff00) ^
        (Td4[FUNC6(t1, 0)] & 0x000000ff) ^
        rk[0];
    FUNC1(s0, pt);
    s1 =
        (Td4[FUNC6(t1, 3)] & 0xff000000) ^
        (Td4[FUNC6(t0, 2)] & 0x00ff0000) ^
        (Td4[FUNC6(t3, 1)] & 0x0000ff00) ^
        (Td4[FUNC6(t2, 0)] & 0x000000ff) ^
        rk[1];
    FUNC1(s1, pt+4);
    s2 =
        (Td4[FUNC6(t2, 3)] & 0xff000000) ^
        (Td4[FUNC6(t1, 2)] & 0x00ff0000) ^
        (Td4[FUNC6(t0, 1)] & 0x0000ff00) ^
        (Td4[FUNC6(t3, 0)] & 0x000000ff) ^
        rk[2];
    FUNC1(s2, pt+8);
    s3 =
        (Td4[FUNC6(t3, 3)] & 0xff000000) ^
        (Td4[FUNC6(t2, 2)] & 0x00ff0000) ^
        (Td4[FUNC6(t1, 1)] & 0x0000ff00) ^
        (Td4[FUNC6(t0, 0)] & 0x000000ff) ^
        rk[3];
    FUNC1(s3, pt+12);
}