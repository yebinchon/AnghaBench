#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tchunkptr ;
typedef  TYPE_1__* mstate ;
typedef  int /*<<< orphan*/  mchunkptr ;
typedef  int /*<<< orphan*/  bindex_t ;
struct TYPE_8__ {int /*<<< orphan*/  treemap; } ;

/* Variables and functions */
 size_t MIN_CHUNK_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC11(mstate m, size_t nb)
{
  tchunkptr t, v;
  mchunkptr r;
  size_t rsize;
  bindex_t i = FUNC4(m->treemap);

  v = t = *FUNC9(m, i);
  rsize = FUNC2(t) - nb;

  while ((t = FUNC3(t)) != 0) {
    size_t trem = FUNC2(t) - nb;
    if (trem < rsize) {
      rsize = trem;
      v = t;
    }
  }

  r = FUNC1(v, nb);
  FUNC10(m, v);
  if (rsize < MIN_CHUNK_SIZE) {
    FUNC6(m, v, (rsize + nb));
  } else {
    FUNC8(m, v, nb);
    FUNC7(r, rsize);
    FUNC5(m, r, rsize);
  }
  return FUNC0(v);
}