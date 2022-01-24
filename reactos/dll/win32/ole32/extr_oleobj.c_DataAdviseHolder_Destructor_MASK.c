#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t maxCons; int advf; struct TYPE_7__* connections; struct TYPE_7__* remote_connections; scalar_t__ delegate; int /*<<< orphan*/ * pAdvSink; } ;
typedef  TYPE_1__ DataAdviseHolder ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*) ; 
 int WINE_ADVF_REMOTE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(DataAdviseHolder* ptrToDestroy)
{
  DWORD index;
  FUNC3("%p\n", ptrToDestroy);

  for (index = 0; index < ptrToDestroy->maxCons; index++)
  {
    if (ptrToDestroy->connections[index].pAdvSink != NULL)
    {
      if (ptrToDestroy->delegate && 
          (ptrToDestroy->connections[index].advf & WINE_ADVF_REMOTE))
        FUNC2(ptrToDestroy->delegate,
          ptrToDestroy->remote_connections[index]);

      FUNC4(ptrToDestroy->connections + index);
    }
  }

  FUNC1(FUNC0(), 0, ptrToDestroy->remote_connections);
  FUNC1(FUNC0(), 0, ptrToDestroy->connections);
  FUNC1(FUNC0(), 0, ptrToDestroy);
}