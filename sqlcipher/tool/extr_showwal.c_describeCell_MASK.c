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
 scalar_t__ FUNC1 (unsigned char*,size_t,char*) ; 
 size_t FUNC2 (size_t,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static i64 FUNC5(
  unsigned char cType,    /* Page type */
  unsigned char *a,       /* Cell content */
  int showCellContent,    /* Show cell content if true */
  char **pzDesc           /* Store description here */
){
  int i;
  i64 nDesc = 0;
  int n = 0;
  int leftChild;
  i64 nPayload;
  i64 rowid;
  i64 nLocal;
  static char zDesc[1000];
  i = 0;
  if( cType<=5 ){
    leftChild = ((a[0]*256 + a[1])*256 + a[2])*256 + a[3];
    a += 4;
    n += 4;
    FUNC3(zDesc, "lx: %d ", leftChild);
    nDesc = FUNC4(zDesc);
  }
  if( cType!=5 ){
    i = FUNC0(a, &nPayload);
    a += i;
    n += i;
    FUNC3(&zDesc[nDesc], "n: %lld ", nPayload);
    nDesc += FUNC4(&zDesc[nDesc]);
    nLocal = FUNC2(nPayload, cType);
  }else{
    nPayload = nLocal = 0;
  }
  if( cType==5 || cType==13 ){
    i = FUNC0(a, &rowid);
    a += i;
    n += i;
    FUNC3(&zDesc[nDesc], "r: %lld ", rowid);
    nDesc += FUNC4(&zDesc[nDesc]);
  }
  if( nLocal<nPayload ){
    int ovfl;
    unsigned char *b = &a[nLocal];
    ovfl = ((b[0]*256 + b[1])*256 + b[2])*256 + b[3];
    FUNC3(&zDesc[nDesc], "ov: %d ", ovfl);
    nDesc += FUNC4(&zDesc[nDesc]);
    n += 4;
  }
  if( showCellContent && cType!=5 ){
    nDesc += FUNC1(a, nLocal, &zDesc[nDesc-1]);
  }
  *pzDesc = zDesc;
  return nLocal+n;
}