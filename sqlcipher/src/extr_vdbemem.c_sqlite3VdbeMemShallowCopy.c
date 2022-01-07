
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ db; int flags; } ;
typedef TYPE_1__ Mem ;


 int MEMCELLSIZE ;
 int MEM_Dyn ;
 int MEM_Ephem ;
 int MEM_Static ;
 scalar_t__ VdbeMemDynamic (TYPE_1__*) ;
 int assert (int) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int ) ;
 int sqlite3VdbeMemIsRowSet (TYPE_1__ const*) ;
 int vdbeClrCopy (TYPE_1__*,TYPE_1__ const*,int) ;

void sqlite3VdbeMemShallowCopy(Mem *pTo, const Mem *pFrom, int srcType){
  assert( !sqlite3VdbeMemIsRowSet(pFrom) );
  assert( pTo->db==pFrom->db );
  if( VdbeMemDynamic(pTo) ){ vdbeClrCopy(pTo,pFrom,srcType); return; }
  memcpy(pTo, pFrom, MEMCELLSIZE);
  if( (pFrom->flags&MEM_Static)==0 ){
    pTo->flags &= ~(MEM_Dyn|MEM_Static|MEM_Ephem);
    assert( srcType==MEM_Ephem || srcType==MEM_Static );
    pTo->flags |= srcType;
  }
}
