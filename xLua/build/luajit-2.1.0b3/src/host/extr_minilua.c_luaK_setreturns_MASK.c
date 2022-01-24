#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ k; } ;
typedef  TYPE_1__ expdesc ;
struct TYPE_9__ {int /*<<< orphan*/  freereg; } ;
typedef  TYPE_2__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ VCALL ; 
 scalar_t__ VVARARG ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC5(FuncState*fs,expdesc*e,int nresults){
if(e->k==VCALL){
FUNC2(FUNC3(fs,e),nresults+1);
}
else if(e->k==VVARARG){
FUNC1(FUNC3(fs,e),nresults+1);
FUNC0(FUNC3(fs,e),fs->freereg);
FUNC4(fs,1);
}
}