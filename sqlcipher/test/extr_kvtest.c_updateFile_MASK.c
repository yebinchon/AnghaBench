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
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 unsigned char* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,unsigned char*) ; 

__attribute__((used)) static void FUNC11(const char *zName, sqlite3_int64 *pnByte, int doFsync){
  FILE *out;              /* FILE from which to read content of zName */
  sqlite3_int64 sz;       /* Size of zName in bytes */
  size_t nWritten;        /* Number of bytes actually read */
  unsigned char *pBuf;    /* Content to store on disk */
  const char *zMode = "wb";   /* Mode for fopen() */

  sz = FUNC3(zName);
  if( sz<0 ){
    FUNC0("No such file: \"%s\"", zName);
  }
  *pnByte = sz;
  if( sz==0 ) return;
  pBuf = FUNC9( sz );
  if( pBuf==0 ){
    FUNC0("Cannot allocate %lld bytes\n", sz);
  }
  FUNC10((int)sz, pBuf); 
#if defined(_WIN32)
  if( doFsync ) zMode = "wbc";
#endif
  out = FUNC5(zName, zMode);
  if( out==0 ){
    FUNC0("Cannot open \"%s\" for writing\n", zName);
  }
  nWritten = FUNC7(pBuf, 1, (size_t)sz, out);
  if( doFsync ){
#if defined(_WIN32)
    fflush(out);
#else
    FUNC6(FUNC4(out));
#endif
  }
  FUNC1(out);
  if( nWritten!=(size_t)sz ){
    FUNC0("Wrote only %d of %d bytes to \"%s\"\n",
               (int)nWritten, (int)sz, zName);
  }
  FUNC8(pBuf);
}