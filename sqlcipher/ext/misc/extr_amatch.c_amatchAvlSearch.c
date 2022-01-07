
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pAfter; struct TYPE_4__* pBefore; int zKey; } ;
typedef TYPE_1__ amatch_avl ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static amatch_avl *amatchAvlSearch(amatch_avl *p, const char *zKey){
  int c;
  while( p && (c = strcmp(zKey, p->zKey))!=0 ){
    p = (c<0) ? p->pBefore : p->pAfter;
  }
  return p;
}
