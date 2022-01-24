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
typedef  int /*<<< orphan*/  zTerm ;
typedef  int sqlite3_int64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (unsigned char const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(
  const unsigned char *aData,   /* Content to print */
  int nData                     /* Number of bytes of content */
){
  sqlite3_int64 iChild = 0;
  sqlite3_int64 iPrefix;
  sqlite3_int64 nTerm;
  sqlite3_int64 n;
  sqlite3_int64 iDocsz;
  int iHeight;
  sqlite3_int64 i = 0;
  int cnt = 0;
  char zTerm[1000];

  i += FUNC2(aData, &n);
  iHeight = (int)n;
  FUNC4("height: %d\n", iHeight);
  if( iHeight>0 ){
    i += FUNC2(aData+i, &iChild);
    FUNC4("left-child: %lld\n", iChild);
  }
  while( i<nData ){
    if( (cnt++)>0 ){
      i += FUNC2(aData+i, &iPrefix);
    }else{
      iPrefix = 0;
    }
    i += FUNC2(aData+i, &nTerm);
    if( iPrefix+nTerm+1 >= sizeof(zTerm) ){
      FUNC1(stderr, "term to long\n");
      FUNC0(1);
    }
    FUNC3(zTerm+iPrefix, aData+i, (size_t)nTerm);
    zTerm[iPrefix+nTerm] = 0;
    i += nTerm;
    if( iHeight==0 ){
      i += FUNC2(aData+i, &iDocsz);
      FUNC4("term: %-25s doclist %7lld bytes offset %lld\n", zTerm, iDocsz, i);
      i += iDocsz;
    }else{
      FUNC4("term: %-25s child %lld\n", zTerm, ++iChild);
    }
  }
}