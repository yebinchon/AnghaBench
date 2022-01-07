
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ iStatement; TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_5__ {scalar_t__ nStatement; } ;


 int SQLITE_OK ;
 int vdbeCloseStatement (TYPE_2__*,int) ;

int sqlite3VdbeCloseStatement(Vdbe *p, int eOp){
  if( p->db->nStatement && p->iStatement ){
    return vdbeCloseStatement(p, eOp);
  }
  return SQLITE_OK;
}
