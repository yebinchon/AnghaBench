
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int flags; } ;
typedef TYPE_1__ Mem ;


 int MEMCELLSIZE ;
 int MEM_Blob ;
 int MEM_Dyn ;
 int MEM_Ephem ;
 int MEM_Static ;
 int MEM_Str ;
 int SQLITE_OK ;
 scalar_t__ VdbeMemDynamic (TYPE_1__*) ;
 int assert (int) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int ) ;
 int sqlite3VdbeMemIsRowSet (TYPE_1__ const*) ;
 int sqlite3VdbeMemMakeWriteable (TYPE_1__*) ;
 int vdbeMemClearExternAndSetNull (TYPE_1__*) ;

int sqlite3VdbeMemCopy(Mem *pTo, const Mem *pFrom){
  int rc = SQLITE_OK;

  assert( !sqlite3VdbeMemIsRowSet(pFrom) );
  if( VdbeMemDynamic(pTo) ) vdbeMemClearExternAndSetNull(pTo);
  memcpy(pTo, pFrom, MEMCELLSIZE);
  pTo->flags &= ~MEM_Dyn;
  if( pTo->flags&(MEM_Str|MEM_Blob) ){
    if( 0==(pFrom->flags&MEM_Static) ){
      pTo->flags |= MEM_Ephem;
      rc = sqlite3VdbeMemMakeWriteable(pTo);
    }
  }

  return rc;
}
