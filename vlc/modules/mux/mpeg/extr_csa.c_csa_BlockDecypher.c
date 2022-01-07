
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int* block_perm ;
 int* block_sbox ;

__attribute__((used)) static void csa_BlockDecypher( uint8_t kk[57], uint8_t ib[8], uint8_t bd[8] )
{
    int i;
    int perm_out;
    int R[9];
    int next_R8;

    for( i = 0; i < 8; i++ )
    {
        R[i+1] = ib[i];
    }


    for( i = 56; i > 0; i-- )
    {
        const int sbox_out = block_sbox[ kk[i]^R[7] ];
        perm_out = block_perm[sbox_out];

        next_R8 = R[7];
        R[7] = R[6] ^ perm_out;
        R[6] = R[5];
        R[5] = R[4] ^ R[8] ^ sbox_out;
        R[4] = R[3] ^ R[8] ^ sbox_out;
        R[3] = R[2] ^ R[8] ^ sbox_out;
        R[2] = R[1];
        R[1] = R[8] ^ sbox_out;

        R[8] = next_R8;
    }

    for( i = 0; i < 8; i++ )
    {
        bd[i] = R[i+1];
    }
}
