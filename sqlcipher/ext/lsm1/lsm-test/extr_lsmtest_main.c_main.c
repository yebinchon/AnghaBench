
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TestFunc TYPE_1__ ;


struct TestFunc {char const* zName; int bRusageReport; int (* xFunc ) (int,char**) ;} ;
typedef int FILE ;


 int do_insert ;
 int do_random_tests ;
 int do_replay ;
 int do_speed_test2 ;
 int do_speed_tests ;
 int do_test ;
 int do_writer_test ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int lsmtest_rusage_report () ;
 int st_do_io ;
 int st_do_show ;
 int st_do_work ;
 int stub1 (int,char**) ;
 int tdb_lsm_env () ;
 int testArgSelect (TYPE_1__*,char*,char*,int*) ;
 int testErrorInit (int,char**) ;
 int testMallocCheck (int ,int*,int*,int *) ;
 int testMallocInstall (int ) ;
 int testMallocUninstall (int ) ;
 int testPrintError (char*,...) ;
 int testPrngInit () ;

int main(int argc, char **argv){
  struct TestFunc {
    const char *zName;
    int bRusageReport;
    int (*xFunc)(int, char **);
  } aTest[] = {
    {"random", 1, do_random_tests},
    {"writespeed", 1, do_writer_test},
    {"io", 1, st_do_io},

    {"insert", 1, do_insert},
    {"replay", 1, do_replay},

    {"speed", 1, do_speed_tests},
    {"speed2", 1, do_speed_test2},
    {"show", 0, st_do_show},
    {"work", 1, st_do_work},
    {"test", 1, do_test},

    {0, 0}
  };
  int rc;
  int iFunc;

  int nLeakAlloc = 0;
  int nLeakByte = 0;





  const char *zReport = "malloc.txt NOT generated";


  testMallocInstall(tdb_lsm_env());

  if( argc<2 ){
    testPrintError("Usage: %s sub-command ?args...?\n", argv[0]);
    return -1;
  }


  testErrorInit(argc, argv);


  testPrngInit();

  rc = testArgSelect(aTest, "sub-command", argv[1], &iFunc);
  if( rc==0 ){
    rc = aTest[iFunc].xFunc(argc-2, &argv[2]);
  }






  testMallocCheck(tdb_lsm_env(), &nLeakAlloc, &nLeakByte, 0);


  if( nLeakAlloc ){
    testPrintError("Leaked %d bytes in %d allocations (%s)\n",
        nLeakByte, nLeakAlloc, zReport
    );
    if( rc==0 ) rc = -1;
  }
  testMallocUninstall(tdb_lsm_env());

  if( aTest[iFunc].bRusageReport ){
    lsmtest_rusage_report();
  }
  return rc;
}
