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
struct TYPE_6__ {int current; int linenumber; } ;
typedef  TYPE_1__ LexState ;

/* Variables and functions */
 int INT_MAX ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(LexState*ls){
int old=ls->current;
FUNC2(ls);
if(FUNC0(ls)&&ls->current!=old)
FUNC2(ls);
if(++ls->linenumber>=(INT_MAX-2))
FUNC1(ls,"chunk has too many lines");
}