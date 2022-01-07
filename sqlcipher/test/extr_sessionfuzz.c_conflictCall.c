
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_changeset_iter ;


 int SQLITE_CHANGESET_OMIT ;

__attribute__((used)) static int conflictCall(
  void *NotUsed,
  int eConflict,
  sqlite3_changeset_iter *p
){
  (void)NotUsed;
  (void)p;
  return SQLITE_CHANGESET_OMIT;
}
