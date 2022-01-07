
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nZero; } ;
struct TYPE_6__ {int flags; scalar_t__ z; int enc; TYPE_1__ u; scalar_t__ n; } ;
typedef TYPE_2__ Mem ;


 int MEM_Blob ;
 int MEM_Zero ;
 int SQLITE_UTF8 ;
 int sqlite3VdbeMemRelease (TYPE_2__*) ;

void sqlite3VdbeMemSetZeroBlob(Mem *pMem, int n){
  sqlite3VdbeMemRelease(pMem);
  pMem->flags = MEM_Blob|MEM_Zero;
  pMem->n = 0;
  if( n<0 ) n = 0;
  pMem->u.nZero = n;
  pMem->enc = SQLITE_UTF8;
  pMem->z = 0;
}
