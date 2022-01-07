
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ i; } ;
typedef TYPE_1__ VfsStatCursor ;


 scalar_t__ VFSSTAT_MXCNT ;

__attribute__((used)) static int vstattabEof(sqlite3_vtab_cursor *cur){
  VfsStatCursor *pCur = (VfsStatCursor*)cur;
  return pCur->i >= VFSSTAT_MXCNT;
}
