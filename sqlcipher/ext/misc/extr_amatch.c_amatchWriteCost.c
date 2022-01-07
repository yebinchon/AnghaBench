
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* zCost; int iSeq; int rCost; } ;
typedef TYPE_1__ amatch_word ;


 int amatchEncodeInt (int ,scalar_t__*) ;

__attribute__((used)) static void amatchWriteCost(amatch_word *pWord){
  amatchEncodeInt(pWord->rCost, pWord->zCost);
  amatchEncodeInt(pWord->iSeq, pWord->zCost+4);
  pWord->zCost[8] = 0;
}
