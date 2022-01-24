#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_11__ {int /*<<< orphan*/  f; int /*<<< orphan*/  ffid; } ;
struct TYPE_13__ {TYPE_1__ c; } ;
struct TYPE_12__ {int /*<<< orphan*/  firstline; } ;
typedef  int /*<<< orphan*/  SBuf ;
typedef  int MSize ;
typedef  TYPE_2__ GCproto ;
typedef  TYPE_3__ GCfunc ;
typedef  int /*<<< orphan*/  BCLine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int,int*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 

void FUNC16(lua_State *L, SBuf *sb, const char *fmt, int depth)
{
  int level = 0, dir = 1, pathstrip = 1;
  MSize lastlen = 0;
  if (depth < 0) { level = ~depth; depth = dir = -1; }  /* Reverse frames. */
  while (level != depth) {  /* Loop through all frame. */
    int size;
    cTValue *frame = FUNC8(L, level, &size);
    if (frame) {
      cTValue *nextframe = size ? frame+size : NULL;
      GCfunc *fn = FUNC2(frame);
      const uint8_t *p = (const uint8_t *)fmt;
      int c;
      while ((c = *p++)) {
	switch (c) {
	case 'p':  /* Preserve full path. */
	  pathstrip = 0;
	  break;
	case 'F': case 'f': {  /* Dump function name. */
	  const char *name;
	  const char *what = FUNC9(L, frame, &name);
	  if (what) {
	    if (c == 'F' && FUNC5(fn)) {  /* Dump module:name for 'F'. */
	      GCproto *pt = FUNC3(fn);
	      if (pt->firstline != ~(BCLine)0) {  /* Not a bytecode builtin. */
		FUNC1(sb, pt, pathstrip);
		FUNC6(sb, ':');
	      }
	    }
	    FUNC7(sb, name, (MSize)FUNC15(name));
	    break;
	  }  /* else: can't derive a name, dump module:line. */
	  }
	  /* fallthrough */
	case 'l':  /* Dump module:line. */
	  if (FUNC5(fn)) {
	    GCproto *pt = FUNC3(fn);
	    if (FUNC1(sb, pt, pathstrip)) {
	      /* Regular Lua function. */
	      BCLine line = c == 'l' ? FUNC0(L, fn, nextframe) :
				       pt->firstline;
	      FUNC6(sb, ':');
	      FUNC10(sb, line >= 0 ? line : pt->firstline);
	    }
	  } else if (FUNC4(fn)) {  /* Dump numbered builtins. */
	    FUNC7(sb, "[builtin#", 9);
	    FUNC10(sb, fn->c.ffid);
	    FUNC6(sb, ']');
	  } else {  /* Dump C function address. */
	    FUNC6(sb, '@');
	    FUNC11(sb, fn->c.f);
	  }
	  break;
	case 'Z':  /* Zap trailing separator. */
	  lastlen = FUNC13(sb);
	  break;
	default:
	  FUNC6(sb, c);
	  break;
	}
      }
    } else if (dir == 1) {
      break;
    } else {
      level -= size;  /* Reverse frame order: quickly skip missing level. */
    }
    level += dir;
  }
  if (lastlen)
    FUNC14(sb, FUNC12(sb) + lastlen);  /* Zap trailing separator. */
}