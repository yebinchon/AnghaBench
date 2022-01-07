
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pNext; } ;
typedef TYPE_1__ IdxWrite ;


 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void idxWriteFree(IdxWrite *pTab){
  IdxWrite *pIter;
  IdxWrite *pNext;
  for(pIter=pTab; pIter; pIter=pNext){
    pNext = pIter->pNext;
    sqlite3_free(pIter);
  }
}
