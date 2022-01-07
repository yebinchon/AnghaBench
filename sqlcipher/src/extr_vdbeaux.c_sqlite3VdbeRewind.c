
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ magic; int nOp; int nMem; scalar_t__ db; int pc; int cacheCtr; int minWriteFileFormat; TYPE_2__* aOp; scalar_t__ nFkConstraint; scalar_t__ iStatement; scalar_t__ nChange; int errorAction; int rc; TYPE_1__* aMem; } ;
typedef TYPE_3__ Vdbe ;
struct TYPE_6__ {scalar_t__ cycles; scalar_t__ cnt; } ;
struct TYPE_5__ {scalar_t__ db; } ;


 int OE_Abort ;
 int SQLITE_OK ;
 scalar_t__ VDBE_MAGIC_INIT ;
 scalar_t__ VDBE_MAGIC_RESET ;
 scalar_t__ VDBE_MAGIC_RUN ;
 int assert (int) ;

void sqlite3VdbeRewind(Vdbe *p){



  assert( p!=0 );
  assert( p->magic==VDBE_MAGIC_INIT || p->magic==VDBE_MAGIC_RESET );



  assert( p->nOp>0 );


  p->magic = VDBE_MAGIC_RUN;






  p->pc = -1;
  p->rc = SQLITE_OK;
  p->errorAction = OE_Abort;
  p->nChange = 0;
  p->cacheCtr = 1;
  p->minWriteFileFormat = 255;
  p->iStatement = 0;
  p->nFkConstraint = 0;






}
