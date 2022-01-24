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
struct TYPE_6__ {int ref; int /*<<< orphan*/ * pCFObject; int /*<<< orphan*/ * storage; int /*<<< orphan*/ * dataAdviseHolder; int /*<<< orphan*/ * oleAdviseHolder; int /*<<< orphan*/ * clientSite; int /*<<< orphan*/ * dataCache; int /*<<< orphan*/ * dataCache_PersistStg; int /*<<< orphan*/  outerUnknown; struct TYPE_6__* containerObj; struct TYPE_6__* containerApp; } ;
typedef  TYPE_1__ DefaultHandler ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC12(
  DefaultHandler* This)
{
  FUNC11("(%p)\n", This);

  /* AddRef/Release may be called on this object during destruction.
   * Prevent the object being destroyed recursively by artificially raising
   * the reference count. */
  This->ref = 10000;

  /* release delegates */
  FUNC0(This);

  FUNC2( FUNC1(), 0, This->containerApp );
  This->containerApp = NULL;
  FUNC2( FUNC1(), 0, This->containerObj );
  This->containerObj = NULL;

  if (This->dataCache)
  {
    /* to balance out the release of dataCache_PersistStg which will result
     * in a reference being released from the outer unknown */
    FUNC9(This->outerUnknown);
    FUNC7(This->dataCache_PersistStg);
    FUNC10(This->dataCache);
    This->dataCache_PersistStg = NULL;
    This->dataCache = NULL;
  }

  if (This->clientSite)
  {
    FUNC6(This->clientSite);
    This->clientSite = NULL;
  }

  if (This->oleAdviseHolder)
  {
    FUNC5(This->oleAdviseHolder);
    This->oleAdviseHolder = NULL;
  }

  if (This->dataAdviseHolder)
  {
    FUNC4(This->dataAdviseHolder);
    This->dataAdviseHolder = NULL;
  }

  if (This->storage)
  {
    FUNC8(This->storage);
    This->storage = NULL;
  }

  if (This->pCFObject)
  {
    FUNC3(This->pCFObject);
    This->pCFObject = NULL;
  }

  FUNC2(FUNC1(), 0, This);
}