
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_2__ {int interp; int zTableName; } ;
typedef TYPE_1__ echo_vtab ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int appendToEchoModule (int ,char const*) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int ) ;

__attribute__((used)) static int echoTransactionCall(sqlite3_vtab *tab, const char *zCall){
  char *z;
  echo_vtab *pVtab = (echo_vtab *)tab;
  z = sqlite3_mprintf("echo(%s)", pVtab->zTableName);
  if( z==0 ) return SQLITE_NOMEM;
  appendToEchoModule(pVtab->interp, zCall);
  appendToEchoModule(pVtab->interp, z);
  sqlite3_free(z);
  return SQLITE_OK;
}
