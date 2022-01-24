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
struct TYPE_3__ {int /*<<< orphan*/ * lpVtbl; } ;
struct drive {int ref; char* root; TYPE_1__ IDrive_iface; int /*<<< orphan*/  classinfo; } ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ IDrive ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_Drive ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  drivevtbl ; 
 struct drive* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drive*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(WCHAR letter, IDrive **drive)
{
    struct drive *This;

    *drive = NULL;

    This = FUNC1(sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IDrive_iface.lpVtbl = &drivevtbl;
    This->ref = 1;
    This->root = FUNC0(NULL, 3);
    if (!This->root)
    {
        FUNC2(This);
        return E_OUTOFMEMORY;
    }
    This->root[0] = letter;
    This->root[1] = ':';
    This->root[2] = '\\';
    This->root[3] = 0;

    FUNC3(&CLSID_Drive, (IUnknown *)&This->IDrive_iface, &This->classinfo);
    *drive = &This->IDrive_iface;
    return S_OK;
}