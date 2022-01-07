
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 char* tdb_library_name (int *) ;
 int tdb_open (char const*,int ,int ,int **) ;
 int testClose (int **) ;

void testReopen(TestDb **ppDb, int *pRc){
  if( *pRc==0 ){
    const char *zLib;
    zLib = tdb_library_name(*ppDb);
    testClose(ppDb);
    *pRc = tdb_open(zLib, 0, 0, ppDb);
  }
}
