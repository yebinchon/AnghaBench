
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pRule; scalar_t__ rBaseCost; scalar_t__ rCostX; } ;
typedef TYPE_2__ fuzzer_stem ;
typedef scalar_t__ fuzzer_cost ;
struct TYPE_4__ {scalar_t__ rCost; } ;



__attribute__((used)) static fuzzer_cost fuzzerCost(fuzzer_stem *pStem){
  return pStem->rCostX = pStem->rBaseCost + pStem->pRule->rCost;
}
