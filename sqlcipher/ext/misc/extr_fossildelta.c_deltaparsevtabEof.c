
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ eOp; } ;
typedef TYPE_1__ deltaparsevtab_cursor ;


 scalar_t__ DELTAPARSE_OP_EOF ;

__attribute__((used)) static int deltaparsevtabEof(sqlite3_vtab_cursor *cur){
  deltaparsevtab_cursor *pCur = (deltaparsevtab_cursor*)cur;
  return pCur->eOp==DELTAPARSE_OP_EOF;
}
