
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ps; } ;
struct TYPE_11__ {TYPE_1__ u; int tag; } ;
typedef TYPE_2__ TTree ;


 int TSeq ;
 int memcpy (int ,TYPE_2__*,int) ;
 int sib1 (TYPE_2__*) ;
 TYPE_2__* sib2 (TYPE_2__*) ;

__attribute__((used)) static TTree *seqaux (TTree *tree, TTree *sib, int sibsize) {
  tree->tag = TSeq; tree->u.ps = sibsize + 1;
  memcpy(sib1(tree), sib, sibsize * sizeof(TTree));
  return sib2(tree);
}
