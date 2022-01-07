
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ iRowid; } ;
typedef TYPE_1__ memstat_cursor ;


 scalar_t__ MSV_NROW ;

__attribute__((used)) static int memstatEof(sqlite3_vtab_cursor *cur){
  memstat_cursor *pCur = (memstat_cursor*)cur;
  return pCur->iRowid>MSV_NROW;
}
