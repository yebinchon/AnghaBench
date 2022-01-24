#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* tchunkptr ;
typedef  TYPE_2__* mstate ;
typedef  int /*<<< orphan*/  mchunkptr ;
typedef  scalar_t__ binmap_t ;
typedef  int /*<<< orphan*/  bindex_t ;
struct TYPE_19__ {scalar_t__ treemap; size_t dvsize; } ;
struct TYPE_18__ {struct TYPE_18__** child; } ;

/* Variables and functions */
 size_t MIN_CHUNK_SIZE ; 
 size_t SIZE_T_BITSIZE ; 
 size_t SIZE_T_ONE ; 
 void* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 size_t FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_1__*,size_t) ; 
 TYPE_1__** FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static void *FUNC15(mstate m, size_t nb)
{
  tchunkptr v = 0;
  size_t rsize = ~nb+1; /* Unsigned negation */
  tchunkptr t;
  bindex_t idx;
  FUNC3(nb, idx);

  if ((t = *FUNC13(m, idx)) != 0) {
    /* Traverse tree for this bin looking for node with size == nb */
    size_t sizebits = nb << FUNC8(idx);
    tchunkptr rst = 0;  /* The deepest untaken right subtree */
    for (;;) {
      tchunkptr rt;
      size_t trem = FUNC2(t) - nb;
      if (trem < rsize) {
	v = t;
	if ((rsize = trem) == 0)
	  break;
      }
      rt = t->child[1];
      t = t->child[(sizebits >> (SIZE_T_BITSIZE-SIZE_T_ONE)) & 1];
      if (rt != 0 && rt != t)
	rst = rt;
      if (t == 0) {
	t = rst; /* set t to least subtree holding sizes > nb */
	break;
      }
      sizebits <<= 1;
    }
  }

  if (t == 0 && v == 0) { /* set t to root of next non-empty treebin */
    binmap_t leftbits = FUNC6(FUNC4(idx)) & m->treemap;
    if (leftbits != 0)
      t = *FUNC13(m, FUNC9(leftbits));
  }

  while (t != 0) { /* find smallest of tree or subtree */
    size_t trem = FUNC2(t) - nb;
    if (trem < rsize) {
      rsize = trem;
      v = t;
    }
    t = FUNC7(t);
  }

  /*  If dv is a better fit, return NULL so malloc will use it */
  if (v != 0 && rsize < (size_t)(m->dvsize - nb)) {
    mchunkptr r = FUNC1(v, nb);
    FUNC14(m, v);
    if (rsize < MIN_CHUNK_SIZE) {
      FUNC10(m, v, (rsize + nb));
    } else {
      FUNC12(m, v, nb);
      FUNC11(r, rsize);
      FUNC5(m, r, rsize);
    }
    return FUNC0(v);
  }
  return NULL;
}