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
struct TYPE_3__ {int Nr; int* eK; int* dK; } ;
typedef  TYPE_1__ aes_key ;

/* Variables and functions */
 int CRYPT_INVALID_KEYSIZE ; 
 int CRYPT_INVALID_ROUNDS ; 
 int CRYPT_OK ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned char const*) ; 
 int FUNC1 (int,int) ; 
 int* Tks0 ; 
 int* Tks1 ; 
 int* Tks2 ; 
 int* Tks3 ; 
 size_t FUNC2 (int,int) ; 
 int* rcon ; 
 int FUNC3 (int) ; 

int FUNC4(const unsigned char *key, int keylen, int rounds, aes_key *skey)
{
    int i, j;
    ulong32 temp, *rk;
    ulong32 *rrk;

    if (keylen != 16 && keylen != 24 && keylen != 32) {
       return CRYPT_INVALID_KEYSIZE;
    }

    if (rounds != 0 && rounds != (10 + ((keylen/8)-2)*2)) {
       return CRYPT_INVALID_ROUNDS;
    }

    skey->Nr = 10 + ((keylen/8)-2)*2;

    /* setup the forward key */
    i                 = 0;
    rk                = skey->eK;
    FUNC0(rk[0], key     );
    FUNC0(rk[1], key +  4);
    FUNC0(rk[2], key +  8);
    FUNC0(rk[3], key + 12);
    if (keylen == 16) {
        j = 44;
        for (;;) {
            temp  = rk[3];
            rk[4] = rk[0] ^ FUNC3(temp) ^ rcon[i];
            rk[5] = rk[1] ^ rk[4];
            rk[6] = rk[2] ^ rk[5];
            rk[7] = rk[3] ^ rk[6];
            if (++i == 10) {
               break;
            }
            rk += 4;
        }
    } else if (keylen == 24) {
        j = 52;
        FUNC0(rk[4], key + 16);
        FUNC0(rk[5], key + 20);
        for (;;) {
            temp = rk[5];
            rk[ 6] = rk[ 0] ^ FUNC3(temp) ^ rcon[i];
            rk[ 7] = rk[ 1] ^ rk[ 6];
            rk[ 8] = rk[ 2] ^ rk[ 7];
            rk[ 9] = rk[ 3] ^ rk[ 8];
            if (++i == 8) {
                break;
            }
            rk[10] = rk[ 4] ^ rk[ 9];
            rk[11] = rk[ 5] ^ rk[10];
            rk += 6;
        }
    } else if (keylen == 32) {
        j = 60;
        FUNC0(rk[4], key + 16);
        FUNC0(rk[5], key + 20);
        FUNC0(rk[6], key + 24);
        FUNC0(rk[7], key + 28);
        for (;;) {
            temp = rk[7];
            rk[ 8] = rk[ 0] ^ FUNC3(temp) ^ rcon[i];
            rk[ 9] = rk[ 1] ^ rk[ 8];
            rk[10] = rk[ 2] ^ rk[ 9];
            rk[11] = rk[ 3] ^ rk[10];
            if (++i == 7) {
                break;
            }
            temp = rk[11];
            rk[12] = rk[ 4] ^ FUNC3(FUNC1(temp, 8));
            rk[13] = rk[ 5] ^ rk[12];
            rk[14] = rk[ 6] ^ rk[13];
            rk[15] = rk[ 7] ^ rk[14];
            rk += 8;
        }
    } else {
       j = 4;
    }

    rk   = skey->dK;
    rrk  = skey->eK + j - 4;

    *rk++ = *rrk++;
    *rk++ = *rrk++;
    *rk++ = *rrk++;
    *rk   = *rrk;
    rk -= 3; rrk -= 3;

    for (i = 1; i < skey->Nr; i++) {
        rrk -= 4;
        rk  += 4;
        temp = rrk[0];
        rk[0] =
            Tks0[FUNC2(temp, 3)] ^
            Tks1[FUNC2(temp, 2)] ^
            Tks2[FUNC2(temp, 1)] ^
            Tks3[FUNC2(temp, 0)];
        temp = rrk[1];
        rk[1] =
            Tks0[FUNC2(temp, 3)] ^
            Tks1[FUNC2(temp, 2)] ^
            Tks2[FUNC2(temp, 1)] ^
            Tks3[FUNC2(temp, 0)];
        temp = rrk[2];
        rk[2] =
            Tks0[FUNC2(temp, 3)] ^
            Tks1[FUNC2(temp, 2)] ^
            Tks2[FUNC2(temp, 1)] ^
            Tks3[FUNC2(temp, 0)];
        temp = rrk[3];
        rk[3] =
            Tks0[FUNC2(temp, 3)] ^
            Tks1[FUNC2(temp, 2)] ^
            Tks2[FUNC2(temp, 1)] ^
            Tks3[FUNC2(temp, 0)];
    }

    rrk -= 4;
    rk  += 4;
    *rk++ = *rrk++;
    *rk++ = *rrk++;
    *rk++ = *rrk++;
    *rk   = *rrk;

    return CRYPT_OK;
}