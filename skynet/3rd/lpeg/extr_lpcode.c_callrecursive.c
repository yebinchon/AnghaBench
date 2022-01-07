
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int key; scalar_t__ tag; } ;
typedef TYPE_1__ TTree ;


 scalar_t__ TCall ;
 scalar_t__ TRule ;
 int assert (int) ;
 TYPE_1__* sib2 (TYPE_1__*) ;

__attribute__((used)) static int callrecursive (TTree *tree, int f (TTree *t), int def) {
  int key = tree->key;
  assert(tree->tag == TCall);
  assert(sib2(tree)->tag == TRule);
  if (key == 0)
    return def;
  else {
    int result;
    tree->key = 0;
    result = f(sib2(tree));
    tree->key = key;
    return result;
  }
}
