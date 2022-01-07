
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_10__ {int sb; } ;
struct TYPE_9__ {scalar_t__ asize; scalar_t__ hmask; int node; int array; } ;
struct TYPE_8__ {int val; int key; } ;
typedef int TValue ;
typedef TYPE_1__ Node ;
typedef size_t MSize ;
typedef TYPE_2__ GCtab ;
typedef TYPE_3__ BCWriteCtx ;


 int bcwrite_ktabk (TYPE_3__*,int *,int) ;
 char* lj_strfmt_wuleb128 (char*,size_t) ;
 TYPE_1__* noderef (int ) ;
 int setsbufP (int *,char*) ;
 int tvisnil (int *) ;
 int * tvref (int ) ;

__attribute__((used)) static void bcwrite_ktab(BCWriteCtx *ctx, char *p, const GCtab *t)
{
  MSize narray = 0, nhash = 0;
  if (t->asize > 0) {
    ptrdiff_t i;
    TValue *array = tvref(t->array);
    for (i = (ptrdiff_t)t->asize-1; i >= 0; i--)
      if (!tvisnil(&array[i]))
 break;
    narray = (MSize)(i+1);
  }
  if (t->hmask > 0) {
    MSize i, hmask = t->hmask;
    Node *node = noderef(t->node);
    for (i = 0; i <= hmask; i++)
      nhash += !tvisnil(&node[i].val);
  }

  p = lj_strfmt_wuleb128(p, narray);
  p = lj_strfmt_wuleb128(p, nhash);
  setsbufP(&ctx->sb, p);
  if (narray) {
    MSize i;
    TValue *o = tvref(t->array);
    for (i = 0; i < narray; i++, o++)
      bcwrite_ktabk(ctx, o, 1);
  }
  if (nhash) {
    MSize i = nhash;
    Node *node = noderef(t->node) + t->hmask;
    for (;; node--)
      if (!tvisnil(&node->val)) {
 bcwrite_ktabk(ctx, &node->key, 0);
 bcwrite_ktabk(ctx, &node->val, 1);
 if (--i == 0) break;
      }
  }
}
