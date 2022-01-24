#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_12__ {int /*<<< orphan*/  tag; } ;
struct TYPE_11__ {int /*<<< orphan*/  key; int /*<<< orphan*/  tag; } ;
typedef  TYPE_1__ TTree ;

/* Variables and functions */
#define  LUA_TBOOLEAN 132 
#define  LUA_TFUNCTION 131 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int /*<<< orphan*/  TChar ; 
 int /*<<< orphan*/  TFalse ; 
 int /*<<< orphan*/  TRunTime ; 
 int /*<<< orphan*/  TTrue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,size_t,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static TTree *FUNC14 (lua_State *L, int idx, int *len) {
  TTree *tree;
  switch (FUNC8(L, idx)) {
    case LUA_TSTRING: {
      size_t slen;
      const char *s = FUNC7(L, idx, &slen);  /* get string */
      if (slen == 0)  /* empty? */
        tree = FUNC10(L, TTrue);  /* always match */
      else {
        tree = FUNC11(L, 2 * (slen - 1) + 1);
        FUNC1(tree, TChar, slen, s);  /* sequence of 'slen' chars */
      }
      break;
    }
    case LUA_TNUMBER: {
      int n = FUNC6(L, idx);
      tree = FUNC12(L, n);
      break;
    }
    case LUA_TBOOLEAN: {
      tree = (FUNC5(L, idx) ? FUNC10(L, TTrue) : FUNC10(L, TFalse));
      break;
    }
    case LUA_TTABLE: {
      tree = FUNC9(L, idx);
      break;
    }
    case LUA_TFUNCTION: {
      tree = FUNC11(L, 2);
      tree->tag = TRunTime;
      tree->key = FUNC0(L, 0, idx);
      FUNC13(tree)->tag = TTrue;
      break;
    }
    default: {
      return FUNC3(L, idx, len);
    }
  }
  FUNC4(L, idx);  /* put new tree into 'idx' slot */
  if (len)
    *len = FUNC2(L, idx);
  return tree;
}