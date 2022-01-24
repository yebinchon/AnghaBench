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
struct foldercollection {int ref; TYPE_1__ IFolderCollection_iface; int /*<<< orphan*/  classinfo; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ IFolderCollection ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_Folders ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  foldercollvtbl ; 
 struct foldercollection* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct foldercollection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(BSTR path, IFolderCollection **folders)
{
    struct foldercollection *This;

    *folders = NULL;

    This = FUNC1(sizeof(struct foldercollection));
    if (!This) return E_OUTOFMEMORY;

    This->IFolderCollection_iface.lpVtbl = &foldercollvtbl;
    This->ref = 1;
    This->path = FUNC0(path);
    if (!This->path)
    {
        FUNC2(This);
        return E_OUTOFMEMORY;
    }

    FUNC3(&CLSID_Folders, (IUnknown *)&This->IFolderCollection_iface, &This->classinfo);
    *folders = &This->IFolderCollection_iface;

    return S_OK;
}