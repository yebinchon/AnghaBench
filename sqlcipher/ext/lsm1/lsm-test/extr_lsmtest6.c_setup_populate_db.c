
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;


 int ArraySize (char const**) ;
 int LSMTEST6_TESTDB ;
 int LSM_OK ;
 int assert (int) ;
 int lsmWriteStr (int *,char const*,char const*) ;
 int lsm_close (int *) ;
 int lsm_new (int ,int **) ;
 int lsm_open (int *,int ) ;
 int tdb_lsm_env () ;
 int testDeleteLsmdb (int ) ;
 int testSaveDb (int ,char*) ;

__attribute__((used)) static void setup_populate_db(void){
  const char *azStr[] = {
    "one", "one",
    "two", "four",
    "three", "nine",
    "four", "sixteen",
    "five", "twentyfive",
    "six", "thirtysix",
    "seven", "fourtynine",
    "eight", "sixtyfour",
  };
  int rc;
  int ii;
  lsm_db *pDb;

  testDeleteLsmdb(LSMTEST6_TESTDB);

  rc = lsm_new(tdb_lsm_env(), &pDb);
  if( rc==LSM_OK ) rc = lsm_open(pDb, LSMTEST6_TESTDB);

  for(ii=0; rc==LSM_OK && ii<ArraySize(azStr); ii+=2){
    rc = lsmWriteStr(pDb, azStr[ii], azStr[ii+1]);
  }
  lsm_close(pDb);

  testSaveDb(LSMTEST6_TESTDB, "log");
  assert( rc==LSM_OK );
}
