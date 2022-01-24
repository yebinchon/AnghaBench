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
struct TYPE_4__ {int /*<<< orphan*/  lvl; int /*<<< orphan*/  buffer; int /*<<< orphan*/  p; int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ luaL_Buffer ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC2(luaL_Buffer*B){
size_t l=FUNC0(B);
if(l==0)return 0;
else{
FUNC1(B->L,B->buffer,l);
B->p=B->buffer;
B->lvl++;
return 1;
}
}