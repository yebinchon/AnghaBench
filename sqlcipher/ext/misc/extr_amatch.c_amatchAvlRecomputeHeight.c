
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {short imbalance; short height; TYPE_2__* pAfter; TYPE_1__* pBefore; } ;
typedef TYPE_3__ amatch_avl ;
struct TYPE_6__ {short height; } ;
struct TYPE_5__ {short height; } ;



__attribute__((used)) static void amatchAvlRecomputeHeight(amatch_avl *p){
  short int hBefore = p->pBefore ? p->pBefore->height : 0;
  short int hAfter = p->pAfter ? p->pAfter->height : 0;
  p->imbalance = hBefore - hAfter;
  p->height = (hBefore>hAfter ? hBefore : hAfter)+1;
}
