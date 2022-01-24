#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int sqlite3_int64 ;
struct TYPE_5__ {int nGroup; int /*<<< orphan*/ * apGroup; } ;
typedef  TYPE_1__ FuzzChangeset ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (void*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int*,void**) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*,char const*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

int FUNC12(int argc, char **argv){
  int nRepeat = 0;                /* Number of output files */
  int iSeed = 0;                  /* Value of PRNG seed */
  const char *zInput;             /* Name of input file */
  void *pChangeset = 0;           /* Input changeset */
  int nChangeset = 0;             /* Size of input changeset in bytes */
  int i;                          /* Current output file */
  FuzzChangeset changeset;        /* Partially parsed changeset */
  int rc;
  u8 *pBuf = 0;

  if( argc!=4 && argc!=2 ) FUNC11(argv[0]);
  zInput = argv[1];

  FUNC8(zInput, &nChangeset, &pChangeset);
  rc = FUNC5(pChangeset, nChangeset, &changeset);

  if( rc==SQLITE_OK ){
    if( argc==2 ){
      for(i=0; i<changeset.nGroup; i++){
        FUNC6(&changeset, changeset.apGroup[i]);
      }
    }else{
      pBuf = (u8*)FUNC4((sqlite3_int64)nChangeset*2 + 1024);
      if( pBuf==0 ){
        rc = SQLITE_NOMEM;
      }else{
        iSeed = FUNC0(argv[2]);
        nRepeat = FUNC0(argv[3]);
        FUNC7((unsigned int)iSeed);
        for(i=0; rc==SQLITE_OK && i<nRepeat; i++){
          char *zOut = FUNC10("%s-%d", zInput, i);
          rc = FUNC2(zOut, pBuf, &changeset);
          FUNC9(zOut);
        }
        FUNC3(pBuf);
      }
    }
  }

  if( rc!=SQLITE_OK ){
    FUNC1(stderr, "error while processing changeset: %d\n", rc);
  }

  return rc;
}