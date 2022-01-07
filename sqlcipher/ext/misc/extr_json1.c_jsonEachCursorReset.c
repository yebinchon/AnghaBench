
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zRoot; scalar_t__ zJson; scalar_t__ eType; scalar_t__ iEnd; scalar_t__ i; scalar_t__ iRowid; int sParse; } ;
typedef TYPE_1__ JsonEachCursor ;


 int jsonParseReset (int *) ;
 int sqlite3_free (scalar_t__) ;

__attribute__((used)) static void jsonEachCursorReset(JsonEachCursor *p){
  sqlite3_free(p->zJson);
  sqlite3_free(p->zRoot);
  jsonParseReset(&p->sParse);
  p->iRowid = 0;
  p->i = 0;
  p->iEnd = 0;
  p->eType = 0;
  p->zJson = 0;
  p->zRoot = 0;
}
