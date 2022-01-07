
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pVtab; } ;
typedef TYPE_1__ sqlite3_vtab_cursor ;
struct TYPE_6__ {scalar_t__ nByte; } ;
typedef TYPE_2__ VfslogVtab ;
struct TYPE_7__ {scalar_t__ iOffset; } ;
typedef TYPE_3__ VfslogCsr ;



__attribute__((used)) static int vlogEof(sqlite3_vtab_cursor *pCursor){
  VfslogCsr *pCsr = (VfslogCsr *)pCursor;
  VfslogVtab *p = (VfslogVtab *)pCursor->pVtab;
  return (pCsr->iOffset>=p->nByte);
}
