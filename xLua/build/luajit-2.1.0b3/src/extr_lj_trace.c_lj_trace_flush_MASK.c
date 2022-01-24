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
struct TYPE_8__ {scalar_t__ sizetrace; } ;
typedef  TYPE_1__ jit_State ;
typedef  scalar_t__ TraceNo ;
struct TYPE_9__ {scalar_t__ root; } ;
typedef  TYPE_2__ GCtrace ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,scalar_t__) ; 

void FUNC2(jit_State *J, TraceNo traceno)
{
  if (traceno > 0 && traceno < J->sizetrace) {
    GCtrace *T = FUNC1(J, traceno);
    if (T && T->root == 0)
      FUNC0(J, T);
  }
}