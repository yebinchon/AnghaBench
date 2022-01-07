
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tag; } ;
struct TYPE_6__ {int cap; int tag; } ;
typedef TYPE_1__ TTree ;


 int TCapture ;
 int TTrue ;
 TYPE_2__* sib1 (TYPE_1__*) ;

__attribute__((used)) static TTree *auxemptycap (TTree *tree, int cap) {
  tree->tag = TCapture;
  tree->cap = cap;
  sib1(tree)->tag = TTrue;
  return tree;
}
