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
struct ConsControl {int /*<<< orphan*/  tostore; int /*<<< orphan*/  na; int /*<<< orphan*/  v; } ;
struct TYPE_4__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ LexState ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*) ; 

__attribute__((used)) static void FUNC2(LexState*ls,struct ConsControl*cc){
FUNC0(ls,&cc->v);
FUNC1(ls->fs,cc->na,(INT_MAX-2),"items in a constructor");
cc->na++;
cc->tostore++;
}