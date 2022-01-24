#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  metatable; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
 int /*<<< orphan*/  TM_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC11(lua_State*L,const TValue*t,TValue*key,StkId val){
int loop;
for(loop=0;loop<100;loop++){
const TValue*tm;
if(FUNC10(t)){
Table*h=FUNC2(t);
const TValue*res=FUNC5(h,key);
if(!FUNC9(res)||
(tm=FUNC1(L,h->metatable,TM_INDEX))==NULL){
FUNC7(L,val,res);
return;
}
}
else if(FUNC9(tm=FUNC6(L,t,TM_INDEX)))
FUNC4(L,t,"index");
if(FUNC8(tm)){
FUNC0(L,val,tm,t,key);
return;
}
t=tm;
}
FUNC3(L,"loop in gettable");
}