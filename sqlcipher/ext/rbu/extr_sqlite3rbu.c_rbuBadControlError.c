
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zErrmsg; int rc; } ;
typedef TYPE_1__ sqlite3rbu ;


 int SQLITE_ERROR ;
 int sqlite3_mprintf (char*) ;

__attribute__((used)) static void rbuBadControlError(sqlite3rbu *p){
  p->rc = SQLITE_ERROR;
  p->zErrmsg = sqlite3_mprintf("invalid rbu_control value");
}
