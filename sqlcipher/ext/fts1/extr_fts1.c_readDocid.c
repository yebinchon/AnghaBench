
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_6__ {int iLastPos; scalar_t__ iLastColumn; TYPE_1__* pDoclist; int p; } ;
struct TYPE_5__ {scalar_t__ iType; } ;
typedef TYPE_2__ DocListReader ;


 scalar_t__ DL_POSITIONS ;
 int assert (int) ;
 int atEnd (TYPE_2__*) ;
 scalar_t__ getVarint (int ,int *) ;

__attribute__((used)) static sqlite_int64 readDocid(DocListReader *pReader){
  sqlite_int64 ret;
  assert( !atEnd(pReader) );
  assert( pReader->iLastPos==-1 );
  pReader->p += getVarint(pReader->p, &ret);
  if( pReader->pDoclist->iType>=DL_POSITIONS ){
    pReader->iLastColumn = 0;
    pReader->iLastPos = 0;
  }
  return ret;
}
