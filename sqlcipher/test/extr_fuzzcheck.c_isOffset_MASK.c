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
 unsigned int FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 

__attribute__((used)) static int FUNC2(
  const unsigned char *zIn,  /* Text input */
  int nIn,                   /* Bytes of input */
  unsigned int *pK,          /* half-byte cursor to adjust */
  unsigned int *pI           /* Input index to adjust */
){
  int i;
  unsigned int k = 0;
  unsigned char c;
  for(i=1; i<nIn && (c = zIn[i])!=']'; i++){
    if( !FUNC1(c) ) return 0;
    k = k*16 + FUNC0(c);
  }
  if( i==nIn ) return 0;
  *pK = 2*k;
  *pI += i;
  return 1;
}