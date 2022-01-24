#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int jpc; } ;
typedef  TYPE_1__ FuncState ;

/* Variables and functions */
 int NO_JUMP ; 
 int /*<<< orphan*/  OP_JMP ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*,int) ; 

int FUNC2 (FuncState *fs) {
  int jpc = fs->jpc;  /* save list of jumps to here */
  int j;
  fs->jpc = NO_JUMP;  /* no more jumps to here */
  j = FUNC0(fs, OP_JMP, 0, NO_JUMP);
  FUNC1(fs, &j, jpc);  /* keep them on hold */
  return j;
}