
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* byte ;
struct TYPE_9__ {void* n; } ;
struct TYPE_12__ {int tag; TYPE_1__ u; } ;
struct TYPE_10__ {int ps; void* n; } ;
struct TYPE_11__ {int tag; TYPE_2__ u; } ;
typedef TYPE_3__ TTree ;


 int TSeq ;
 TYPE_6__* sib1 (TYPE_3__*) ;
 TYPE_3__* sib2 (TYPE_3__*) ;

__attribute__((used)) static void fillseq (TTree *tree, int tag, int n, const char *s) {
  int i;
  for (i = 0; i < n - 1; i++) {
    tree->tag = TSeq; tree->u.ps = 2;
    sib1(tree)->tag = tag;
    sib1(tree)->u.n = s ? (byte)s[i] : 0;
    tree = sib2(tree);
  }
  tree->tag = tag;
  tree->u.n = s ? (byte)s[i] : 0;
}
