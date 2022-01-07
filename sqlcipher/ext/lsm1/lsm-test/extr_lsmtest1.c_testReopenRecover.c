
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 char* tdb_default_db (char const*) ;
 char* tdb_library_name (int *) ;
 int tdb_open (char const*,int ,int ,int **) ;
 int testClose (int **) ;
 int testCopyLsmdb (char const*,char const*) ;

void testReopenRecover(TestDb **ppDb, int *pRc){
  if( *pRc==0 ){
    const char *zLib = tdb_library_name(*ppDb);
    const char *zDflt = tdb_default_db(zLib);
    testCopyLsmdb(zDflt, "bak.db");
    testClose(ppDb);
    testCopyLsmdb("bak.db", zDflt);
    *pRc = tdb_open(zLib, 0, 0, ppDb);
  }
}
