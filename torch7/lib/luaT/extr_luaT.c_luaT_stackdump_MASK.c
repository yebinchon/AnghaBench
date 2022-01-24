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
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
#define  LUA_TBOOLEAN 132 
#define  LUA_TNUMBER 131 
#define  LUA_TSTRING 130 
#define  LUA_TTABLE 129 
#define  LUA_TUSERDATA 128 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 double FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

void FUNC13(lua_State *L)
{
  int i;
  const char *tname = NULL;
  int top = FUNC1(L);
  for(i = 1; i <= top; i++)
  {
    int t = FUNC10(L, i);
    FUNC12("%3d. ", i);
    switch(t)
    {
      case LUA_TSTRING:
        FUNC12("'%s'", FUNC9(L,i));
        break;
      case LUA_TBOOLEAN:
        FUNC12(FUNC6(L, i) ? "true" : "false");
        break;
      case LUA_TNUMBER:
        FUNC12("%g", FUNC7(L,i));
        break;
      case LUA_TUSERDATA:
        tname = FUNC0(L, i);
        FUNC12("userdata %p [%s]", FUNC8(L, i), (tname ? tname : "not a Torch object"));
        break;
      case 10:
        tname = FUNC0(L, i);
        FUNC12("cdata %p [%s]", FUNC8(L, i), (tname ? tname : "not a Torch object"));
        break;
      case LUA_TTABLE:
        FUNC4(L, i);
        FUNC5(L, LUA_REGISTRYINDEX);
        if(FUNC2(L, -1))
          tname = FUNC9(L, -1); /*luaT_typenameid(L, lua_tostring(L, -1)); */
        else
          tname = NULL;
        FUNC3(L, 1);
        if(tname)
          FUNC12("metatable [%s]", tname);
        else
        {
          tname = FUNC0(L, i);
          FUNC12("table %p [%s]", FUNC8(L, i), (tname ? tname : "not a Torch object"));
        }
        break;
      default:
        FUNC12("Lua object type: %s", FUNC11(L,t));
        break;
    }
    FUNC12("\n");
  }
  FUNC12("---------------------------------------------\n");
}