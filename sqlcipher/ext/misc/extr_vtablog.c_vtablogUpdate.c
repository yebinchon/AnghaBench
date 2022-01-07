
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iInst; } ;
typedef TYPE_1__ vtablog_vtab ;
typedef int sqlite_int64 ;
typedef int sqlite3_vtab ;
typedef int sqlite3_value ;


 int SQLITE_OK ;
 int printf (char*,...) ;
 int vtablogQuote (int *) ;

__attribute__((used)) static int vtablogUpdate(
  sqlite3_vtab *tab,
  int argc,
  sqlite3_value **argv,
  sqlite_int64 *pRowid
){
  vtablog_vtab *pTab = (vtablog_vtab*)tab;
  int i;
  printf("vtablogUpdate(tab=%d):\n", pTab->iInst);
  printf("  argc=%d\n", argc);
  for(i=0; i<argc; i++){
    printf("  argv[%d]=", i);
    vtablogQuote(argv[i]);
    printf("\n");
  }
  return SQLITE_OK;
}
