
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VdbeOp ;
struct TYPE_5__ {scalar_t__ magic; int nOp; int * aOp; TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_4__ {scalar_t__ mallocFailed; } ;


 scalar_t__ VDBE_MAGIC_INIT ;
 int assert (int) ;

VdbeOp *sqlite3VdbeGetOp(Vdbe *p, int addr){


  static VdbeOp dummy;
  assert( p->magic==VDBE_MAGIC_INIT );
  if( addr<0 ){
    addr = p->nOp - 1;
  }
  assert( (addr>=0 && addr<p->nOp) || p->db->mallocFailed );
  if( p->db->mallocFailed ){
    return (VdbeOp*)&dummy;
  }else{
    return &p->aOp[addr];
  }
}
