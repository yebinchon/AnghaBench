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
struct TYPE_3__ {int /*<<< orphan*/  IUnknown_iface; } ;
typedef  TYPE_1__ threadref ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int AddRef_called ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    threadref ref;
    IUnknown *punk;
    HRESULT hr;
    LONG refcount;

    /* Not present before IE 5 */
    if (!&pSHSetThreadRef) {
        FUNC4("SHSetThreadRef not found\n");
        return;
    }

    /* start with a clean state */
    hr = FUNC3(NULL);
    FUNC1(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);

    /* build and set out object */
    FUNC0(&ref, &refcount);
    AddRef_called = 0;
    refcount = 1;
    hr = FUNC3(&ref.IUnknown_iface);
    FUNC1( (hr == S_OK) && (refcount == 1) && (!AddRef_called),
        "got 0x%x with %d, %d (expected S_OK with 1, 0)\n",
        hr, refcount, AddRef_called);

    /* read back our object */
    AddRef_called = 0;
    refcount = 1;
    punk = NULL;
    hr = FUNC2(&punk);
    FUNC1( (hr == S_OK) && (punk == &ref.IUnknown_iface) && (refcount == 2) && (AddRef_called == 1),
        "got 0x%x and %p with %d, %d (expected S_OK and %p with 2, 1)\n",
        hr, punk, refcount, AddRef_called, &ref);

    /* clear the object pointer */
    hr = FUNC3(NULL);
    FUNC1(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);

    /* verify, that our object is no longer known as ThreadRef */
    hr = FUNC2(&punk);
    FUNC1( (hr == E_NOINTERFACE) && (punk == NULL),
        "got 0x%x and %p (expected E_NOINTERFACE and NULL)\n", hr, punk);

}