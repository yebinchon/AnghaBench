
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
struct drivecollection {int ref; int drives; TYPE_1__ IDriveCollection_iface; int classinfo; scalar_t__ count; } ;
typedef int IUnknown ;
typedef TYPE_1__ IDriveCollection ;
typedef int HRESULT ;
typedef int DWORD ;


 int CLSID_Drives ;
 int E_OUTOFMEMORY ;
 int GetLogicalDrives () ;
 int S_OK ;
 int drivecollectionvtbl ;
 struct drivecollection* heap_alloc (int) ;
 int init_classinfo (int *,int *,int *) ;

__attribute__((used)) static HRESULT create_drivecoll(IDriveCollection **drives)
{
    struct drivecollection *This;
    DWORD mask;

    *drives = ((void*)0);

    This = heap_alloc(sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IDriveCollection_iface.lpVtbl = &drivecollectionvtbl;
    This->ref = 1;
    This->drives = mask = GetLogicalDrives();

    for (This->count = 0; mask; This->count++)
        mask &= mask - 1;

    init_classinfo(&CLSID_Drives, (IUnknown *)&This->IDriveCollection_iface, &This->classinfo);
    *drives = &This->IDriveCollection_iface;
    return S_OK;
}
