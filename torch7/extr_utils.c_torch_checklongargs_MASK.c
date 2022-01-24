#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {int size; } ;
typedef  TYPE_1__ THLongStorage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

THLongStorage* FUNC9(lua_State *L, int index)
{
  THLongStorage *storage;
  int i;
  int narg = FUNC6(L)-index+1;

  if(narg == 1 && FUNC5(L, index, "torch.LongStorage"))
  {
    THLongStorage *storagesrc = FUNC5(L, index, "torch.LongStorage");
    storage = FUNC2(storagesrc->size);
    FUNC0(storage, storagesrc);
  }
  else
  {
    storage = FUNC2(narg);
    for(i = index; i < index+narg; i++)
    {
      if(!FUNC7(L, i))
      {
        FUNC1(storage);
        FUNC4(L, i, "number expected");
      }
      FUNC3(storage, i-index, FUNC8(L, i));
    }
  }
  return storage;
}