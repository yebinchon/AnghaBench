
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_6__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
typedef int multiplexGroup ;
struct TYPE_5__ {int (* xFileSize ) (TYPE_2__*,int *) ;} ;


 TYPE_2__* multiplexSubOpen (int *,int,int*,int *,int ) ;
 int stub1 (TYPE_2__*,int *) ;

__attribute__((used)) static sqlite3_int64 multiplexSubSize(
  multiplexGroup *pGroup,
  int iChunk,
  int *rc
){
  sqlite3_file *pSub;
  sqlite3_int64 sz = 0;

  if( *rc ) return 0;
  pSub = multiplexSubOpen(pGroup, iChunk, rc, ((void*)0), 0);
  if( pSub==0 ) return 0;
  *rc = pSub->pMethods->xFileSize(pSub, &sz);
  return sz;
}
