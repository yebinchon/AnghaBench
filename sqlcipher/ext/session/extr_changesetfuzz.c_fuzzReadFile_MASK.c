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
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (void*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC9(const char *zFilename, int *pSz, void **ppBuf){
  FILE *f;
  sqlite3_int64 sz;
  void *pBuf;
  f = FUNC2(zFilename, "rb");
  if( f==0 ){
    FUNC3(stderr, "cannot open \"%s\" for reading\n", zFilename);
    FUNC0(1);
  }
  FUNC5(f, 0, SEEK_END);
  sz = FUNC6(f);
  FUNC7(f);
  pBuf = FUNC8( sz ? sz : 1 );
  if( pBuf==0 ){
    FUNC3(stderr, "cannot allocate %d to hold content of \"%s\"\n",
            (int)sz, zFilename);
    FUNC0(1);
  }
  if( sz>0 ){
    if( FUNC4(pBuf, (size_t)sz, 1, f)!=1 ){
      FUNC3(stderr, "cannot read all %d bytes of \"%s\"\n",
              (int)sz, zFilename);
      FUNC0(1);
    }
    FUNC1(f);
  }
  *pSz = (int)sz;
  *ppBuf = pBuf;
}