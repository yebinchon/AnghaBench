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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int,...) ; 

__attribute__((used)) static void FUNC1(unsigned char *p, int n, char *zCksum){
  unsigned int s0 = 0, s1 = 0;
  unsigned int *pI;
  int i;
  if( n<=16 ){
    for(i=0; i<n; i++) FUNC0(zCksum+i*2, "%02x", p[i]);
  }else{ 
    pI = (unsigned int*)p;
    for(i=0; i<n-7; i+=8){
      s0 += pI[0] + s1;
      s1 += pI[1] + s0;
      pI += 2;
    }
    for(i=0; i<8; i++) FUNC0(zCksum+i*2, "%02x", p[i]);
    FUNC0(zCksum+i*2, "-%08x%08x", s0, s1);
  }
}