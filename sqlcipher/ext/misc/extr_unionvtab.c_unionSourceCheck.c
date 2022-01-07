
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nSrc; int * aSrc; } ;
typedef TYPE_1__ UnionTab ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*) ;
 scalar_t__ sqlite3_stricmp (char*,char*) ;
 char* unionSourceToStr (int*,TYPE_1__*,int *,char**) ;

__attribute__((used)) static int unionSourceCheck(UnionTab *pTab, char **pzErr){
  int rc = SQLITE_OK;
  char *z0 = 0;
  int i;

  assert( *pzErr==0 );
  z0 = unionSourceToStr(&rc, pTab, &pTab->aSrc[0], pzErr);
  for(i=1; i<pTab->nSrc; i++){
    char *z = unionSourceToStr(&rc, pTab, &pTab->aSrc[i], pzErr);
    if( rc==SQLITE_OK && sqlite3_stricmp(z, z0) ){
      *pzErr = sqlite3_mprintf("source table schema mismatch");
      rc = SQLITE_ERROR;
    }
    sqlite3_free(z);
  }
  sqlite3_free(z0);

  return rc;
}
