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
typedef  int MV_U8 ;
typedef  int MV_U32 ;

/* Variables and functions */
 int MAXBC ; 
 int FUNC0 (int,int) ; 

void FUNC1(MV_U8 a[4][MAXBC], MV_U8 rk[4][MAXBC]) {
        /* Mix the four bytes of every column in a linear way
	 */
	MV_U8 b[4][MAXBC];
	int i, j;

	for(j = 0; j < 4; j++){
        b[0][j] = FUNC0(25,a[0][j]) ^ FUNC0(1,a[1][j]) ^ a[2][j] ^ a[3][j];
        b[1][j] = FUNC0(25,a[1][j]) ^ FUNC0(1,a[2][j]) ^ a[3][j] ^ a[0][j];
        b[2][j] = FUNC0(25,a[2][j]) ^ FUNC0(1,a[3][j]) ^ a[0][j] ^ a[1][j];
        b[3][j] = FUNC0(25,a[3][j]) ^ FUNC0(1,a[0][j]) ^ a[1][j] ^ a[2][j];
    }
	for(i = 0; i < 4; i++)
		/*for(j = 0; j < BC; j++) a[i][j] = b[i][j];*/
        ((MV_U32*)(&(a[i][0])))[0] = ((MV_U32*)(&(b[i][0])))[0] ^ ((MV_U32*)(&(rk[i][0])))[0];
}