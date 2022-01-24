#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ptrdiff_t ;
struct TYPE_10__ {int /*<<< orphan*/  sb; } ;
struct TYPE_9__ {scalar_t__ asize; scalar_t__ hmask; int /*<<< orphan*/  node; int /*<<< orphan*/  array; } ;
struct TYPE_8__ {int /*<<< orphan*/  val; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ Node ;
typedef  size_t MSize ;
typedef  TYPE_2__ GCtab ;
typedef  TYPE_3__ BCWriteCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (char*,size_t) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(BCWriteCtx *ctx, char *p, const GCtab *t)
{
  MSize narray = 0, nhash = 0;
  if (t->asize > 0) {  /* Determine max. length of array part. */
    ptrdiff_t i;
    TValue *array = FUNC5(t->array);
    for (i = (ptrdiff_t)t->asize-1; i >= 0; i--)
      if (!FUNC4(&array[i]))
	break;
    narray = (MSize)(i+1);
  }
  if (t->hmask > 0) {  /* Count number of used hash slots. */
    MSize i, hmask = t->hmask;
    Node *node = FUNC2(t->node);
    for (i = 0; i <= hmask; i++)
      nhash += !FUNC4(&node[i].val);
  }
  /* Write number of array slots and hash slots. */
  p = FUNC1(p, narray);
  p = FUNC1(p, nhash);
  FUNC3(&ctx->sb, p);
  if (narray) {  /* Write array entries (may contain nil). */
    MSize i;
    TValue *o = FUNC5(t->array);
    for (i = 0; i < narray; i++, o++)
      FUNC0(ctx, o, 1);
  }
  if (nhash) {  /* Write hash entries. */
    MSize i = nhash;
    Node *node = FUNC2(t->node) + t->hmask;
    for (;; node--)
      if (!FUNC4(&node->val)) {
	FUNC0(ctx, &node->key, 0);
	FUNC0(ctx, &node->val, 1);
	if (--i == 0) break;
      }
  }
}