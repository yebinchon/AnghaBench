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
struct TYPE_3__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ LexState ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 char const* FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 char const** luaX_tokens ; 

__attribute__((used)) static const char*FUNC2(LexState*ls,int token){
if(token<257){
return(FUNC0(token))?FUNC1(ls->L,"char(%d)",token):
FUNC1(ls->L,"%c",token);
}
else
return luaX_tokens[token-257];
}