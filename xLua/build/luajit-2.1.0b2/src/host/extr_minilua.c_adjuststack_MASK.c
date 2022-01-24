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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int lvl; int /*<<< orphan*/ * L; } ;
typedef  TYPE_1__ luaL_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(luaL_Buffer*B){
if(B->lvl>1){
lua_State*L=B->L;
int toget=1;
size_t toplen=FUNC1(L,-1);
do{
size_t l=FUNC1(L,-(toget+1));
if(B->lvl-toget+1>=(20/2)||toplen>l){
toplen+=l;
toget++;
}
else break;
}while(toget<B->lvl);
FUNC0(L,toget);
B->lvl=B->lvl-toget+1;
}
}