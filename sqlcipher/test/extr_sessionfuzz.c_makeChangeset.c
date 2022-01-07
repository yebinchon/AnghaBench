
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_session ;


 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int sqlite3_free (void*) ;
 int sqlite3session_changeset (int *,int*,void**) ;
 int stderr ;
 int writeFile (char const*,void*,int) ;

__attribute__((used)) static void makeChangeset(const char *zFile, sqlite3_session *pSess){
  void *pChg;
  int nChg;
  int rc;
  rc = sqlite3session_changeset(pSess, &nChg, &pChg);
  if( rc ){
    fprintf(stderr, "sqlite3session_changeset() returned %d\n", rc);
    exit(1);
  }
  writeFile(zFile, pChg, nChg);
  sqlite3_free(pChg);
}
