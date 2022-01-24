#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TestFunc   TYPE_1__ ;

/* Type definitions */
struct TestFunc {char const* zName; int bRusageReport; int (* xFunc ) (int,char**) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  do_insert ; 
 int /*<<< orphan*/  do_random_tests ; 
 int /*<<< orphan*/  do_replay ; 
 int /*<<< orphan*/  do_speed_test2 ; 
 int /*<<< orphan*/  do_speed_tests ; 
 int /*<<< orphan*/  do_test ; 
 int /*<<< orphan*/  do_writer_test ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  st_do_io ; 
 int /*<<< orphan*/  st_do_show ; 
 int /*<<< orphan*/  st_do_work ; 
 int FUNC3 (int,char**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (TYPE_1__*,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int FUNC12(int argc, char **argv){
  struct TestFunc {
    const char *zName;
    int bRusageReport;
    int (*xFunc)(int, char **);
  } aTest[] = {
    {"random",      1, do_random_tests},
    {"writespeed",  1, do_writer_test},
    {"io",          1, st_do_io},

    {"insert",      1, do_insert},
    {"replay",      1, do_replay},

    {"speed",       1, do_speed_tests},
    {"speed2",      1, do_speed_test2},
    {"show",        0, st_do_show},
    {"work",        1, st_do_work},
    {"test",        1, do_test},

    {0, 0}
  };
  int rc;                         /* Return Code */
  int iFunc;                      /* Index into aTest[] */

  int nLeakAlloc = 0;             /* Allocations leaked by lsm */
  int nLeakByte = 0;              /* Bytes leaked by lsm */

#ifdef LSM_DEBUG_MEM
  FILE *pReport = 0;              /* lsm malloc() report file */
  const char *zReport = "malloc.txt generated";
#else
  const char *zReport = "malloc.txt NOT generated";
#endif

  FUNC8(FUNC4());

  if( argc<2 ){
    FUNC10("Usage: %s sub-command ?args...?\n", argv[0]);
    return -1;
  }

  /* Initialize error reporting */
  FUNC6(argc, argv);

  /* Initialize PRNG system */
  FUNC11();

  rc = FUNC5(aTest, "sub-command", argv[1], &iFunc);
  if( rc==0 ){
    rc = aTest[iFunc].xFunc(argc-2, &argv[2]);
  }

#ifdef LSM_DEBUG_MEM
  pReport = fopen("malloc.txt", "w");
  testMallocCheck(tdb_lsm_env(), &nLeakAlloc, &nLeakByte, pReport);
  fclose(pReport);
#else
  FUNC7(FUNC4(), &nLeakAlloc, &nLeakByte, 0);
#endif

  if( nLeakAlloc ){
    FUNC10("Leaked %d bytes in %d allocations (%s)\n", 
        nLeakByte, nLeakAlloc, zReport
    );
    if( rc==0 ) rc = -1;
  }
  FUNC9(FUNC4());

  if( aTest[iFunc].bRusageReport ){
    FUNC2();
  }
  return rc;
}