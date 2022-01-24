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
struct filecollection {int ref; TYPE_1__ IFileCollection_iface; int /*<<< orphan*/  classinfo; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ IFileCollection ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_Files ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filecollectionvtbl ; 
 struct filecollection* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct filecollection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(BSTR path, IFileCollection **files)
{
    struct filecollection *This;

    *files = NULL;

    This = FUNC1(sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IFileCollection_iface.lpVtbl = &filecollectionvtbl;
    This->ref = 1;
    This->path = FUNC0(path);
    if (!This->path)
    {
        FUNC2(This);
        return E_OUTOFMEMORY;
    }

    FUNC3(&CLSID_Files, (IUnknown *)&This->IFileCollection_iface, &This->classinfo);
    *files = &This->IFileCollection_iface;
    return S_OK;
}