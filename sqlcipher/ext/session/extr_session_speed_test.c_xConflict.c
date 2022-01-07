
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_changeset_iter ;


 int SQLITE_CHANGESET_ABORT ;

__attribute__((used)) static int xConflict(void *pCtx, int eConflict, sqlite3_changeset_iter *p){
  return SQLITE_CHANGESET_ABORT;
}
