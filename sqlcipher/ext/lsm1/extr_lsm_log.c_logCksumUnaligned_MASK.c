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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(
  char *z,                        /* Input buffer */
  int n,                          /* Size of input buffer in bytes */
  u32 *pCksum0,                   /* IN/OUT: Checksum value 1 */
  u32 *pCksum1                    /* IN/OUT: Checksum value 2 */
){
  u8 *a = (u8 *)z;
  u32 cksum0 = *pCksum0;
  u32 cksum1 = *pCksum1;
  int nIn = (n/8) * 8;
  int i;

  FUNC0( n>0 );
  for(i=0; i<nIn; i+=8){
    cksum0 += FUNC1(&a[i]) + cksum1;
    cksum1 += FUNC1(&a[i+4]) + cksum0;
  }

  if( nIn!=n ){
    u8 aBuf[8] = {0, 0, 0, 0, 0, 0, 0, 0};
    FUNC0( (n-nIn)<8 && n>nIn );
    FUNC2(aBuf, &a[nIn], n-nIn);
    cksum0 += FUNC1(aBuf) + cksum1;
    cksum1 += FUNC1(&aBuf[4]) + cksum0;
  }

  *pCksum0 = cksum0;
  *pCksum1 = cksum1;
}