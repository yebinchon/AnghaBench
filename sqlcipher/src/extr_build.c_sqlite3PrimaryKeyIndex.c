
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* pIndex; } ;
typedef TYPE_1__ Table ;
struct TYPE_7__ {struct TYPE_7__* pNext; } ;
typedef TYPE_2__ Index ;


 int IsPrimaryKeyIndex (TYPE_2__*) ;

Index *sqlite3PrimaryKeyIndex(Table *pTab){
  Index *p;
  for(p=pTab->pIndex; p && !IsPrimaryKeyIndex(p); p=p->pNext){}
  return p;
}
