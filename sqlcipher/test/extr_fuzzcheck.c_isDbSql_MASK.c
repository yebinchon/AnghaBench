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
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char*,char*,int) ; 

__attribute__((used)) static int FUNC3(unsigned char *a, int n){
  unsigned char buf[12];
  int i;
  if( n>4 && FUNC2(a,"\n--\n",4)==0 ) return 1;
  while( n>0 && FUNC0(a[0]) ){ a++; n--; }
  for(i=0; n>0 && i<8; n--, a++){
    if( FUNC1(a[0]) ) buf[i++] = a[0];
  }
  if( i==8 && FUNC2(buf,"53514c69",8)==0 ) return 1;
  return 0;
}