
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ iRowid; scalar_t__ nStr; } ;
typedef TYPE_1__ prefixes_cursor ;



__attribute__((used)) static int prefixesEof(sqlite3_vtab_cursor *cur){
  prefixes_cursor *pCur = (prefixes_cursor*)cur;
  return pCur->iRowid>pCur->nStr;
}
