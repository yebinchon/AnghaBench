#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ endpc; scalar_t__ startpc; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ VarInfo ;
struct TYPE_13__ {size_t nuv; size_t* uvmap; int /*<<< orphan*/  vbase; } ;
struct TYPE_12__ {size_t len; } ;
struct TYPE_11__ {int vtop; int /*<<< orphan*/  sb; TYPE_1__* vstack; } ;
typedef  size_t MSize ;
typedef  TYPE_2__ LexState ;
typedef  TYPE_3__ GCstr ;
typedef  TYPE_4__ FuncState ;
typedef  scalar_t__ BCPos ;

/* Variables and functions */
 uintptr_t VARNAME__MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 
 char* FUNC5 (char*,scalar_t__) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC10(LexState *ls, FuncState *fs, size_t *ofsvar)
{
  VarInfo *vs =ls->vstack, *ve;
  MSize i, n;
  BCPos lastpc;
  FUNC3(&ls->sb);  /* Copy to temp. string buffer. */
  /* Store upvalue names. */
  for (i = 0, n = fs->nuv; i < n; i++) {
    GCstr *s = FUNC9(vs[fs->uvmap[i]].name);
    MSize len = s->len+1;
    char *p = FUNC1(&ls->sb, len);
    p = FUNC4(p, FUNC8(s), len);
    FUNC7(&ls->sb, p);
  }
  *ofsvar = FUNC6(&ls->sb);
  lastpc = 0;
  /* Store local variable names and compressed ranges. */
  for (ve = vs + ls->vtop, vs += fs->vbase; vs < ve; vs++) {
    if (!FUNC0(vs)) {
      GCstr *s = FUNC9(vs->name);
      BCPos startpc;
      char *p;
      if ((uintptr_t)s < VARNAME__MAX) {
	p = FUNC1(&ls->sb, 1 + 2*5);
	*p++ = (char)(uintptr_t)s;
      } else {
	MSize len = s->len+1;
	p = FUNC1(&ls->sb, len + 2*5);
	p = FUNC4(p, FUNC8(s), len);
      }
      startpc = vs->startpc;
      p = FUNC5(p, startpc-lastpc);
      p = FUNC5(p, vs->endpc-startpc);
      FUNC7(&ls->sb, p);
      lastpc = startpc;
    }
  }
  FUNC2(&ls->sb, '\0');  /* Terminator for varinfo. */
  return FUNC6(&ls->sb);
}