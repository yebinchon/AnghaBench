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
typedef  int /*<<< orphan*/  Table ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int FUNC0 (int*,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC5(lua_State*L,Table*t,const TValue*ek){
int nasize,na;
int nums[(32-2)+1];
int i;
int totaluse;
for(i=0;i<=(32-2);i++)nums[i]=0;
nasize=FUNC2(t,nums);
totaluse=nasize;
totaluse+=FUNC3(t,nums,&nasize);
nasize+=FUNC1(ek,nums);
totaluse++;
na=FUNC0(nums,&nasize);
FUNC4(L,t,nasize,totaluse-na);
}