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
 int /*<<< orphan*/  FUNC0 (int,char*,char*,unsigned int) ; 

__attribute__((used)) static void FUNC1(unsigned char digest[16], char zDigest[50]){
  int i, j;
  unsigned int x;
  for(i=j=0; i<16; i+=2){
    x = digest[i]*256 + digest[i+1];
    if( i>0 ) zDigest[j++] = '-';
    FUNC0(50-j, &zDigest[j], "%05u", x);
    j += 5;
  }
  zDigest[j] = 0;
}