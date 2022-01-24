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
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  a ;
typedef  int /*<<< orphan*/  Table ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static Node*FUNC5(const Table*t,lua_Number n){
unsigned int a[FUNC0(sizeof(lua_Number)/sizeof(int))];
int i;
if(FUNC3(n,0))
return FUNC1(t,0);
FUNC4(a,&n,sizeof(a));
for(i=1;i<FUNC0(sizeof(lua_Number)/sizeof(int));i++)a[0]+=a[i];
return FUNC2(t,a[0]);
}