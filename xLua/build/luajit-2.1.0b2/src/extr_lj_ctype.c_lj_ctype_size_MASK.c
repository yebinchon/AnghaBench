#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  int /*<<< orphan*/  CTSize ;

/* Variables and functions */
 int /*<<< orphan*/  CTSIZE_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

CTSize FUNC2(CTState *cts, CTypeID id)
{
  CType *ct = FUNC1(cts, id);
  return FUNC0(ct->info) ? ct->size : CTSIZE_INVALID;
}