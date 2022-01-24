#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int ref; int max_cons; TYPE_2__ IOleAdviseHolder_iface; void* connections; } ;
typedef  TYPE_1__ OleAdviseHolderImpl ;
typedef  TYPE_2__ IOleAdviseHolder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int INITIAL_SINKS ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  oahvt ; 

__attribute__((used)) static IOleAdviseHolder *FUNC3(void)
{
  OleAdviseHolderImpl* lpoah;

  lpoah = FUNC1(FUNC0(), 0, sizeof(OleAdviseHolderImpl));

  lpoah->IOleAdviseHolder_iface.lpVtbl = &oahvt;
  lpoah->ref = 1;
  lpoah->max_cons = INITIAL_SINKS;
  lpoah->connections = FUNC1(FUNC0(), HEAP_ZERO_MEMORY,
                                 lpoah->max_cons * sizeof(*lpoah->connections));

  FUNC2("returning %p\n",  &lpoah->IOleAdviseHolder_iface);
  return &lpoah->IOleAdviseHolder_iface;
}