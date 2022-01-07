
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MV_U8 ;
typedef int MV_U32 ;


 int MAXBC ;
 int mul (int,int) ;

void MixColumn(MV_U8 a[4][MAXBC], MV_U8 rk[4][MAXBC]) {


 MV_U8 b[4][MAXBC];
 int i, j;

 for(j = 0; j < 4; j++){
        b[0][j] = mul(25,a[0][j]) ^ mul(1,a[1][j]) ^ a[2][j] ^ a[3][j];
        b[1][j] = mul(25,a[1][j]) ^ mul(1,a[2][j]) ^ a[3][j] ^ a[0][j];
        b[2][j] = mul(25,a[2][j]) ^ mul(1,a[3][j]) ^ a[0][j] ^ a[1][j];
        b[3][j] = mul(25,a[3][j]) ^ mul(1,a[0][j]) ^ a[1][j] ^ a[2][j];
    }
 for(i = 0; i < 4; i++)

        ((MV_U32*)(&(a[i][0])))[0] = ((MV_U32*)(&(b[i][0])))[0] ^ ((MV_U32*)(&(rk[i][0])))[0];
}
