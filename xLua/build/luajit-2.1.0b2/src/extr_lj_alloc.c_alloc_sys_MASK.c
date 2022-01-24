#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mstate ;
typedef  TYPE_2__* msegmentptr ;
typedef  TYPE_3__* mchunkptr ;
struct TYPE_18__ {size_t head; } ;
struct TYPE_17__ {char* base; int size; struct TYPE_17__* next; } ;
struct TYPE_16__ {size_t topsize; TYPE_3__* top; TYPE_2__ seg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 char* CMFAIL ; 
 size_t DEFAULT_MMAP_THRESHOLD ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 size_t PINUSE_BIT ; 
 size_t SIZE_T_ONE ; 
 size_t TOP_FOOT_SIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,size_t) ; 
 void* FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (TYPE_3__*,size_t) ; 
 void* FUNC6 (size_t) ; 
 size_t FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_3__*,size_t) ; 
 void* FUNC9 (TYPE_1__*,char*,char*,size_t) ; 
 scalar_t__ FUNC10 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_3__*,size_t) ; 

__attribute__((used)) static void *FUNC12(mstate m, size_t nb)
{
  char *tbase = CMFAIL;
  size_t tsize = 0;

  /* Directly map large chunks */
  if (FUNC2(nb >= DEFAULT_MMAP_THRESHOLD)) {
    void *mem = FUNC6(nb);
    if (mem != 0)
      return mem;
  }

  {
    size_t req = nb + TOP_FOOT_SIZE + SIZE_T_ONE;
    size_t rsize = FUNC7(req);
    if (FUNC1(rsize > nb)) { /* Fail if wraps around zero */
      char *mp = (char *)(FUNC0(rsize));
      if (mp != CMFAIL) {
	tbase = mp;
	tsize = rsize;
      }
    }
  }

  if (tbase != CMFAIL) {
    msegmentptr sp = &m->seg;
    /* Try to merge with an existing segment */
    while (sp != 0 && tbase != sp->base + sp->size)
      sp = sp->next;
    if (sp != 0 && FUNC10(sp, m->top)) { /* append */
      sp->size += tsize;
      FUNC8(m, m->top, m->topsize + tsize);
    } else {
      sp = &m->seg;
      while (sp != 0 && sp->base != tbase + tsize)
	sp = sp->next;
      if (sp != 0) {
	char *oldbase = sp->base;
	sp->base = tbase;
	sp->size += tsize;
	return FUNC9(m, tbase, oldbase, nb);
      } else {
	FUNC3(m, tbase, tsize);
      }
    }

    if (nb < m->topsize) { /* Allocate from new or extended top space */
      size_t rsize = m->topsize -= nb;
      mchunkptr p = m->top;
      mchunkptr r = m->top = FUNC5(p, nb);
      r->head = rsize | PINUSE_BIT;
      FUNC11(m, p, nb);
      return FUNC4(p);
    }
  }

  return NULL;
}