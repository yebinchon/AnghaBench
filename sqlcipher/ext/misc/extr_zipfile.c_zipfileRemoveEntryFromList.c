
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* pFirstEntry; } ;
typedef TYPE_1__ ZipfileTab ;
struct TYPE_7__ {struct TYPE_7__* pNext; } ;
typedef TYPE_2__ ZipfileEntry ;


 int zipfileEntryFree (TYPE_2__*) ;

__attribute__((used)) static void zipfileRemoveEntryFromList(ZipfileTab *pTab, ZipfileEntry *pOld){
  if( pOld ){
    ZipfileEntry **pp;
    for(pp=&pTab->pFirstEntry; (*pp)!=pOld; pp=&((*pp)->pNext));
    *pp = (*pp)->pNext;
    zipfileEntryFree(pOld);
  }
}
