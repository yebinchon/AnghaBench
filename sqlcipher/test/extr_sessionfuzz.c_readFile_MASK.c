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
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC4 (char*,int,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (long) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC9(const char *zName, void **ppData, int *pnData){
  FILE *in = FUNC2(zName, "rb");
  long nIn;
  size_t nRead;
  char *pBuf;
  *ppData = 0;
  *pnData = 0;
  if( in==0 ){
    FUNC3(stderr, "Cannot open \"%s\" for reading\n", zName);
    FUNC0(1);
  }
  FUNC5(in, 0, SEEK_END);
  nIn = FUNC6(in);
  FUNC7(in);
  pBuf = FUNC8( nIn+1 );
  if( pBuf==0 ){
    FUNC3(stderr, "Failed to malloc %lld bytes\n", (sqlite3_int64)(nIn+1));
    FUNC0(1);
  }
  nRead = FUNC4(pBuf, 1, nIn, in);
  FUNC1(in);
  if( nRead!=(size_t)nIn ){
    FUNC3(stderr, "Read only %d of %d bytes from %s\n", (int)nRead, (int)nIn,
                    zName);
    FUNC0(1);
  }
  pBuf[nIn] = 0;
  *pnData = nIn;
  *ppData = pBuf;
}