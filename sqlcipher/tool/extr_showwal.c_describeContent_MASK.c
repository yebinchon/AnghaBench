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
typedef  size_t i64 ;

/* Variables and functions */
 int FUNC0 (unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static i64 FUNC3(
  unsigned char *a,       /* Cell content */
  i64 nLocal,             /* Bytes in a[] */
  char *zDesc             /* Write description here */
){
  int nDesc = 0;
  int n, j;
  i64 i, x, v;
  const unsigned char *pData;
  const unsigned char *pLimit;
  char sep = ' ';

  pLimit = &a[nLocal];
  n = FUNC0(a, &x);
  pData = &a[x];
  a += n;
  i = x - n;
  while( i>0 && pData<=pLimit ){
    n = FUNC0(a, &x);
    a += n;
    i -= n;
    nLocal -= n;
    zDesc[0] = sep;
    sep = ',';
    nDesc++;
    zDesc++;
    if( x==0 ){
      FUNC1(zDesc, "*");     /* NULL is a "*" */
    }else if( x>=1 && x<=6 ){
      v = (signed char)pData[0];
      pData++;
      switch( x ){
        case 6:  v = (v<<16) + (pData[0]<<8) + pData[1];  pData += 2;
        case 5:  v = (v<<16) + (pData[0]<<8) + pData[1];  pData += 2;
        case 4:  v = (v<<8) + pData[0];  pData++;
        case 3:  v = (v<<8) + pData[0];  pData++;
        case 2:  v = (v<<8) + pData[0];  pData++;
      }
      FUNC1(zDesc, "%lld", v);
    }else if( x==7 ){
      FUNC1(zDesc, "real");
      pData += 8;
    }else if( x==8 ){
      FUNC1(zDesc, "0");
    }else if( x==9 ){
      FUNC1(zDesc, "1");
    }else if( x>=12 ){
      i64 size = (x-12)/2;
      if( (x&1)==0 ){
        FUNC1(zDesc, "blob(%lld)", size);
      }else{
        FUNC1(zDesc, "txt(%lld)", size);
      }
      pData += size;
    }
    j = (int)FUNC2(zDesc);
    zDesc += j;
    nDesc += j;
  }
  return nDesc;
}