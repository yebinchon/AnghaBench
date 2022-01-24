#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  luaT_cmt__call ; 
 int /*<<< orphan*/  luaT_cmt__newindex ; 
 int FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  luaT_mt__add ; 
 int /*<<< orphan*/  luaT_mt__call ; 
 int /*<<< orphan*/  luaT_mt__concat ; 
 int /*<<< orphan*/  luaT_mt__div ; 
 int /*<<< orphan*/  luaT_mt__eq ; 
 int /*<<< orphan*/  luaT_mt__index ; 
 int /*<<< orphan*/  luaT_mt__le ; 
 int /*<<< orphan*/  luaT_mt__len ; 
 int /*<<< orphan*/  luaT_mt__lt ; 
 int /*<<< orphan*/  luaT_mt__mod ; 
 int /*<<< orphan*/  luaT_mt__mul ; 
 int /*<<< orphan*/  luaT_mt__newindex ; 
 int /*<<< orphan*/  luaT_mt__pow ; 
 int /*<<< orphan*/  luaT_mt__sub ; 
 int /*<<< orphan*/  luaT_mt__tostring ; 
 int /*<<< orphan*/  luaT_mt__unm ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 

int FUNC25(lua_State *L)
{
  /* Local Variables */
  const char* tname = FUNC1(L, 1);
  char parent_name[256];
  int is_in_module = 0;

  /* Argument Checking */
  FUNC24(L, 6);
  FUNC0(L, FUNC10(L, 2) || FUNC11(L, 2), 2, "parent class name or nil expected");
  FUNC0(L, FUNC10(L, 3) || FUNC8(L, 3), 3, "constructor function or nil expected");
  FUNC0(L, FUNC10(L, 4) || FUNC8(L, 4), 4, "destructor function or nil expected");
  FUNC0(L, FUNC10(L, 5) || FUNC8(L, 5), 5, "factory function or nil expected");
  FUNC0(L, FUNC10(L, 6) || FUNC12(L, 6), 6, "module table or nil expected");

  /* Push immediate parent module to stack */
  if(FUNC10(L, 6)) {
    FUNC14(L, 1); /* remove the nil */
    is_in_module = FUNC4(tname, parent_name);
    if (is_in_module)
      FUNC5(L, tname);
    else
      FUNC16(L);
  }

  if(!FUNC12(L, -1))
    FUNC2(L, "while creating metatable %s: bad argument #1 (%s is an invalid module name)", tname, parent_name);

  /* we first create the new metaclass if we have to */
  if(!FUNC6(L, tname))
  {
    /* create the metatable */
    FUNC13(L);

    /* registry[name] = metatable */
    FUNC19(L, -1);
    FUNC22(L, LUA_REGISTRYINDEX, tname);

    /* registry[metatable] = tname */
    FUNC19(L, -1);
    FUNC18(L, tname);
    FUNC21(L, LUA_REGISTRYINDEX);

    /* __index handling */
    FUNC15(L, luaT_mt__index);
    FUNC22(L, -2, "__index");

    /* __newindex handling */
    FUNC15(L, luaT_mt__newindex);
    FUNC22(L, -2, "__newindex");

    /* __typename contains the typename */
    FUNC18(L, tname);
    FUNC22(L, -2, "__typename");

    /* __metatable is self */
    FUNC19(L, -1);
    FUNC22(L, -2, "__metatable");

    /* by default, __version equals 1 */
    FUNC17(L, 1);
    FUNC22(L, -2, "__version");

    /* assign default operator functions */
    FUNC15(L, luaT_mt__tostring);
    FUNC22(L, -2, "__tostring");

    FUNC15(L, luaT_mt__add);
    FUNC22(L, -2, "__add");

    FUNC15(L, luaT_mt__sub);
    FUNC22(L, -2, "__sub");

    FUNC15(L, luaT_mt__mul);
    FUNC22(L, -2, "__mul");

    FUNC15(L, luaT_mt__div);
    FUNC22(L, -2, "__div");

    FUNC15(L, luaT_mt__mod);
    FUNC22(L, -2, "__mod");

    FUNC15(L, luaT_mt__pow);
    FUNC22(L, -2, "__pow");

    FUNC15(L, luaT_mt__unm);
    FUNC22(L, -2, "__unm");

    FUNC15(L, luaT_mt__concat);
    FUNC22(L, -2, "__concat");

    FUNC15(L, luaT_mt__len);
    FUNC22(L, -2, "__len");

    FUNC15(L, luaT_mt__eq);
    FUNC22(L, -2, "__eq");

    FUNC15(L, luaT_mt__lt);
    FUNC22(L, -2, "__lt");

    FUNC15(L, luaT_mt__le);
    FUNC22(L, -2, "__le");

    FUNC15(L, luaT_mt__call);
    FUNC22(L, -2, "__call");
  }

  /* we assign the parent class if necessary */
  if(!FUNC10(L, 2))
  {
    if(FUNC7(L, -1))
      FUNC2(L, "class %s has been already assigned a parent class\n", tname);
    else
    {
      const char* parent_tname = FUNC1(L, 2);
      if(!FUNC6(L, parent_tname))
        FUNC2(L, "bad argument #2 (invalid parent class name %s)", parent_tname);
      FUNC23(L, -2);
    }
  }

  /* register the destructor function  */
  if(!FUNC10(L, 4))
  {
    /* does it exists already? */
    FUNC18(L, "__gc");
    FUNC20(L, -2);

    if(FUNC9(L, -1))
    {
      FUNC14(L, 1); /* pop nil */
      FUNC18(L, "__gc");
      FUNC19(L, 4);
      FUNC21(L, -3);
    }
    else
      FUNC2(L, "%s has been already assigned a destructor", tname);
  }

  /* register the factory function  */
  if(!FUNC10(L, 5))
  {
    /* does it exists already? */
    FUNC18(L, "__factory");
    FUNC20(L, -2);

    if(FUNC9(L, -1))
    {
      FUNC14(L, 1); /* pop nil */
      FUNC18(L, "__factory");
      FUNC19(L, 5);
      FUNC21(L, -3);
    }
    else
      FUNC2(L, "%s has been already assigned a factory", tname);
  }

  /******** Constructor table and metatable ********/
  FUNC18(L, "__constructor");
  FUNC20(L, -2);
  if(FUNC9(L, -1))
  {
    FUNC14(L, 1);                        /* pop nil */
    FUNC13(L);                      /* fancy table */
    FUNC13(L);                      /* fancy metatable */

    FUNC19(L, -3);                 /* metatable */
    FUNC22(L, -2, "__index");       /* so we can get the methods */

    FUNC15(L, luaT_cmt__newindex);
    FUNC22(L, -2, "__newindex");    /* so we add new methods */

    FUNC15(L, luaT_cmt__call);
    FUNC22(L, -2, "__call");        /* so we can create, we are here for only that */

    FUNC19(L, -3);
    FUNC22(L, -2, "__metatable");   /* redirect to metatable with methods */

    FUNC23(L, -2);              /* constructor metatable is ... this fancy metatable */

    /* set metatable[__constructor] = constructor-metatable */
    FUNC18(L, "__constructor");
    FUNC19(L, -2);
    FUNC21(L, -4);
  }

  /* register the constructor function  */
  if(!FUNC10(L, 3))
  {
    /* get constructor metatable */
    FUNC7(L, -1);

    /* does it exists already? */
    FUNC18(L, "__new");
    FUNC20(L, -2);

    if(FUNC9(L, -1))
    {
      FUNC14(L, 1); /* pop nil */
      FUNC18(L, "__new");
      FUNC19(L, 3);
      FUNC21(L, -3);

      /* set "new" in the metatable too */
      FUNC18(L, "new");
      FUNC19(L, 3);
      FUNC21(L, -5);
    }
    else
      FUNC2(L, "%s has been already assigned a constructor", tname);

    /* pop constructor metatable */
    FUNC14(L, 1);
  }

  /* module.name = constructor metatable */
  FUNC22(L, 6, FUNC3(tname));

  return 1; /* returns the metatable */
}