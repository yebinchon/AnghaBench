
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nFrom; int a; } ;
typedef TYPE_1__ EditDist3Cost ;


 int strncmp (int ,int ,int) ;

__attribute__((used)) static int editDist3CostCompare(EditDist3Cost *pA, EditDist3Cost *pB){
  int n = pA->nFrom;
  int rc;
  if( n>pB->nFrom ) n = pB->nFrom;
  rc = strncmp(pA->a, pB->a, n);
  if( rc==0 ) rc = pA->nFrom - pB->nFrom;
  return rc;
}
