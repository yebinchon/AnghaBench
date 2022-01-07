
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__** aHash; } ;
struct TYPE_6__ {struct TYPE_6__* zVal2; struct TYPE_6__* pHashNext; } ;
typedef TYPE_1__ IdxHashEntry ;
typedef TYPE_2__ IdxHash ;


 int IDX_HASH_SIZE ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void idxHashClear(IdxHash *pHash){
  int i;
  for(i=0; i<IDX_HASH_SIZE; i++){
    IdxHashEntry *pEntry;
    IdxHashEntry *pNext;
    for(pEntry=pHash->aHash[i]; pEntry; pEntry=pNext){
      pNext = pEntry->pHashNext;
      sqlite3_free(pEntry->zVal2);
      sqlite3_free(pEntry);
    }
  }
  memset(pHash, 0, sizeof(IdxHash));
}
