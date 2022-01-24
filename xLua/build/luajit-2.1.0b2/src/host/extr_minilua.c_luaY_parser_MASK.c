#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct LexState {int /*<<< orphan*/ * buff; } ;
struct FuncState {TYPE_1__* f; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  ZIO ;
struct TYPE_3__ {int is_vararg; } ;
typedef  TYPE_1__ Proto ;
typedef  int /*<<< orphan*/  Mbuffer ;

/* Variables and functions */
 int /*<<< orphan*/  TK_EOS ; 
 int /*<<< orphan*/  FUNC0 (struct LexState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct LexState*) ; 
 int /*<<< orphan*/  FUNC2 (struct LexState*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct LexState*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct LexState*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct LexState*,struct FuncState*) ; 

__attribute__((used)) static Proto*FUNC7(lua_State*L,ZIO*z,Mbuffer*buff,const char*name){
struct LexState lexstate;
struct FuncState funcstate;
lexstate.buff=buff;
FUNC5(L,&lexstate,z,FUNC3(L,name));
FUNC6(&lexstate,&funcstate);
funcstate.f->is_vararg=2;
FUNC4(&lexstate);
FUNC1(&lexstate);
FUNC0(&lexstate,TK_EOS);
FUNC2(&lexstate);
return funcstate.f;
}