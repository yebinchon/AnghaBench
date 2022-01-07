
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_6__ {struct TYPE_6__* pNext; int * db; } ;
typedef TYPE_1__ VTable ;
struct TYPE_7__ {TYPE_1__* pVTable; } ;
typedef TYPE_2__ Table ;


 int IsVirtual (TYPE_2__*) ;
 int assert (int ) ;

VTable *sqlite3GetVTable(sqlite3 *db, Table *pTab){
  VTable *pVtab;
  assert( IsVirtual(pTab) );
  for(pVtab=pTab->pVTable; pVtab && pVtab->db!=db; pVtab=pVtab->pNext);
  return pVtab;
}
