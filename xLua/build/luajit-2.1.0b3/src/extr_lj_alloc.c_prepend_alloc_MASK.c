#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mstate ;
typedef  TYPE_2__* mchunkptr ;
struct TYPE_20__ {size_t head; } ;
struct TYPE_19__ {size_t topsize; size_t dvsize; TYPE_2__* dv; TYPE_2__* top; } ;

/* Variables and functions */
 size_t PINUSE_BIT ; 
 TYPE_2__* FUNC0 (char*) ; 
 void* FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*,size_t) ; 
 size_t FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*,size_t) ; 

__attribute__((used)) static void *FUNC10(mstate m, char *newbase, char *oldbase, size_t nb)
{
  mchunkptr p = FUNC0(newbase);
  mchunkptr oldfirst = FUNC0(oldbase);
  size_t psize = (size_t)((char *)oldfirst - (char *)p);
  mchunkptr q = FUNC2(p, nb);
  size_t qsize = psize - nb;
  FUNC8(m, p, nb);

  /* consolidate remainder with first chunk of old base */
  if (oldfirst == m->top) {
    size_t tsize = m->topsize += qsize;
    m->top = q;
    q->head = tsize | PINUSE_BIT;
  } else if (oldfirst == m->dv) {
    size_t dsize = m->dvsize += qsize;
    m->dv = q;
    FUNC7(q, dsize);
  } else {
    if (!FUNC4(oldfirst)) {
      size_t nsize = FUNC3(oldfirst);
      FUNC9(m, oldfirst, nsize);
      oldfirst = FUNC2(oldfirst, nsize);
      qsize += nsize;
    }
    FUNC6(q, qsize, oldfirst);
    FUNC5(m, q, qsize);
  }

  return FUNC1(p);
}