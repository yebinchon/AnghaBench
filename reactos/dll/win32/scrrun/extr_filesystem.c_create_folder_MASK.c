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
struct folder {int ref; TYPE_1__ IFolder_iface; int /*<<< orphan*/  classinfo; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ IFolder ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_Folder ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  foldervtbl ; 
 struct folder* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct folder*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC6(const WCHAR *path, IFolder **folder)
{
    struct folder *This;

    *folder = NULL;

    FUNC1("%s\n", FUNC2(path));

    This = FUNC3(sizeof(struct folder));
    if (!This) return E_OUTOFMEMORY;

    This->IFolder_iface.lpVtbl = &foldervtbl;
    This->ref = 1;
    This->path = FUNC0(path);
    if (!This->path)
    {
        FUNC4(This);
        return E_OUTOFMEMORY;
    }

    FUNC5(&CLSID_Folder, (IUnknown *)&This->IFolder_iface, &This->classinfo);
    *folder = &This->IFolder_iface;

    return S_OK;
}