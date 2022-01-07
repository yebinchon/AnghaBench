
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int* key_perm ;

__attribute__((used)) static void csa_ComputeKey( uint8_t kk[57], uint8_t ck[8] )
{
    int i,j,k;
    int bit[64];
    int newbit[64];
    int kb[8][9];




    for( i = 0; i < 8; i++ )
    {
        kb[7][i+1] = ck[i];
    }


    for( i = 0; i < 7; i++ )
    {

        for( j = 0; j < 8; j++ )
        {
            for( k = 0; k < 8; k++ )
            {
                bit[j*8+k] = (kb[7-i][1+j] >> (7-k)) & 1;
                newbit[key_perm[j*8+k]-1] = bit[j*8+k];
            }
        }
        for( j = 0; j < 8; j++ )
        {
            kb[6-i][1+j] = 0;
            for( k = 0; k < 8; k++ )
            {
                kb[6-i][1+j] |= newbit[j*8+k] << (7-k);
            }
        }
    }


    for( i = 0; i < 7; i++ )
    {
        for( j = 0; j < 8; j++ )
        {
            kk[1+i*8+j] = kb[1+i][1+j] ^ i;
        }
    }
}
