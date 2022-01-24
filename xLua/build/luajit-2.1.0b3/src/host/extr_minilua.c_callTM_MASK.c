#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC3(lua_State*L,const TValue*f,const TValue*p1,
const TValue*p2,const TValue*p3){
FUNC2(L,L->top,f);
FUNC2(L,L->top+1,p1);
FUNC2(L,L->top+2,p2);
FUNC2(L,L->top+3,p3);
FUNC1(L,4);
L->top+=4;
FUNC0(L,L->top-4,0);
}