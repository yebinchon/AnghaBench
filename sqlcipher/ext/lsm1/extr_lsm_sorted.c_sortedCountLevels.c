
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iAge; struct TYPE_3__* pNext; } ;
typedef TYPE_1__ Level ;



__attribute__((used)) static int sortedCountLevels(Level *p){
  int iAge = p->iAge;
  int nRet = 0;
  do {
    nRet++;
    p = p->pNext;
  }while( p && p->iAge==iAge );
  return nRet;
}
