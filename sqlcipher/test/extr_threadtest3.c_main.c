
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aTest ;


 int SQLITE_CONFIG_MULTITHREAD ;
 int SQLITE_OK ;
 int cgt_pager_1 ;
 int checkpoint_starvation_1 ;
 int checkpoint_starvation_2 ;
 int create_drop_index_1 ;
 int dynamic_triggers ;
 int fflush (int ) ;
 int fprintf (int ,char*,int) ;
 int lookaside1 ;
 int nGlobalErr ;
 int printf (char*,...) ;
 int sqlite3_config (int ) ;
 int sqlite3_multiplex_initialize (int ,int) ;
 scalar_t__ sqlite3_strglob (char const*,char const*) ;
 scalar_t__ sqlite3_stricmp (char const*,char*) ;
 int stderr ;
 int stdout ;
 int stress1 ;
 int stress2 ;
 void stub1 (int) ;
 int vacuum1 ;
 int walthread1 ;
 int walthread2 ;
 int walthread3 ;
 int walthread4 ;
 int walthread5 ;

int main(int argc, char **argv){
  struct ThreadTest {
    void (*xTest)(int);
    const char *zTest;
    int nMs;
  } aTest[] = {
    { walthread1, "walthread1", 20000 },
    { walthread2, "walthread2", 20000 },
    { walthread3, "walthread3", 20000 },
    { walthread4, "walthread4", 20000 },
    { walthread5, "walthread5", 1000 },

    { cgt_pager_1, "cgt_pager_1", 0 },
    { dynamic_triggers, "dynamic_triggers", 20000 },

    { checkpoint_starvation_1, "checkpoint_starvation_1", 10000 },
    { checkpoint_starvation_2, "checkpoint_starvation_2", 10000 },

    { create_drop_index_1, "create_drop_index_1", 10000 },
    { lookaside1, "lookaside1", 10000 },
    { vacuum1, "vacuum1", 10000 },
    { stress1, "stress1", 10000 },
    { stress2, "stress2", 60000 },
  };
  static char *substArgv[] = { 0, "*", 0 };
  int i, iArg;
  int nTestfound = 0;

  sqlite3_config(SQLITE_CONFIG_MULTITHREAD);
  if( argc<2 ){
    argc = 2;
    argv = substArgv;
  }




  for(iArg=1; iArg<argc; iArg++){
    const char *zArg = argv[iArg];
    if( zArg[0]=='-' ){
      if( sqlite3_stricmp(zArg, "-multiplexor")==0 ){

        int rc = sqlite3_multiplex_initialize(0, 1);
        if( rc!=SQLITE_OK ){
          fprintf(stderr, "Failed to install multiplexor VFS (%d)\n", rc);
          return 253;
        }
      }
      else {
        goto usage;
      }

      continue;
    }

    for(i=0; i<sizeof(aTest)/sizeof(aTest[0]); i++){
      if( sqlite3_strglob(zArg, aTest[i].zTest)==0 ) break;
    }
    if( i>=sizeof(aTest)/sizeof(aTest[0]) ) goto usage;
  }

  for(iArg=1; iArg<argc; iArg++){
    if( argv[iArg][0]=='-' ) continue;
    for(i=0; i<sizeof(aTest)/sizeof(aTest[0]); i++){
      char const *z = aTest[i].zTest;
      if( sqlite3_strglob(argv[iArg],z)==0 ){
        printf("Running %s for %d seconds...\n", z, aTest[i].nMs/1000);
        fflush(stdout);
        aTest[i].xTest(aTest[i].nMs);
        nTestfound++;
      }
    }
  }
  if( nTestfound==0 ) goto usage;

  printf("%d errors out of %d tests\n", nGlobalErr, nTestfound);
  return (nGlobalErr>0 ? 255 : 0);

 usage:
  printf("Usage: %s [-multiplexor] [testname|testprefix*]...\n", argv[0]);
  printf("Available tests are:\n");
  for(i=0; i<sizeof(aTest)/sizeof(aTest[0]); i++){
    printf("   %s\n", aTest[i].zTest);
  }

  return 254;
}
