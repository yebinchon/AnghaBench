
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rc; char* zErr; int iLine; } ;
typedef TYPE_1__ Error ;


 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_SCHEMA ;
 int fflush (int ) ;
 int nGlobalErr ;
 int printf (char*,char*,scalar_t__,char*,int) ;
 scalar_t__ sqlite3_strglob (char*,char*) ;
 int stdout ;

__attribute__((used)) static void print_err(Error *p){
  if( p->rc!=SQLITE_OK ){
    int isWarn = 0;
    if( p->rc==SQLITE_SCHEMA ) isWarn = 1;
    if( sqlite3_strglob("* - no such table: *",p->zErr)==0 ) isWarn = 1;
    printf("%s: (%d) \"%s\" at line %d\n", isWarn ? "Warning" : "Error",
            p->rc, p->zErr, p->iLine);
    if( !isWarn ) nGlobalErr++;
    fflush(stdout);
  }
}
