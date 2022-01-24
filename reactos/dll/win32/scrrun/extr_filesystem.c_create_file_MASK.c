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
struct file {int ref; TYPE_1__ IFile_iface; int /*<<< orphan*/  classinfo; struct file* path; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ IFile ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_File ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int FILE_ATTRIBUTE_DEVICE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FUNC0 (struct file*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  file_vtbl ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7(BSTR path, IFile **file)
{
    struct file *f;
    DWORD len, attrs;

    *file = NULL;

    f = FUNC4(sizeof(struct file));
    if(!f)
        return E_OUTOFMEMORY;

    f->IFile_iface.lpVtbl = &file_vtbl;
    f->ref = 1;

    len = FUNC1(path, 0, NULL, NULL);
    if(!len) {
        FUNC5(f);
        return E_FAIL;
    }

    f->path = FUNC4(len*sizeof(WCHAR));
    if(!f->path) {
        FUNC5(f);
        return E_OUTOFMEMORY;
    }

    if(!FUNC1(path, len, f->path, NULL)) {
        FUNC5(f->path);
        FUNC5(f);
        return E_FAIL;
    }

    attrs = FUNC0(f->path);
    if(attrs==INVALID_FILE_ATTRIBUTES ||
            (attrs&(FILE_ATTRIBUTE_DIRECTORY|FILE_ATTRIBUTE_DEVICE))) {
        FUNC5(f->path);
        FUNC5(f);
        return FUNC3(FUNC2());
    }

    FUNC6(&CLSID_File, (IUnknown *)&f->IFile_iface, &f->classinfo);
    *file = &f->IFile_iface;
    return S_OK;
}