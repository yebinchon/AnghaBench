
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
struct drive {int ref; char* root; TYPE_1__ IDrive_iface; int classinfo; } ;
typedef char WCHAR ;
typedef int IUnknown ;
typedef TYPE_1__ IDrive ;
typedef int HRESULT ;


 int CLSID_Drive ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 char* SysAllocStringLen (int *,int) ;
 int drivevtbl ;
 struct drive* heap_alloc (int) ;
 int heap_free (struct drive*) ;
 int init_classinfo (int *,int *,int *) ;

__attribute__((used)) static HRESULT create_drive(WCHAR letter, IDrive **drive)
{
    struct drive *This;

    *drive = ((void*)0);

    This = heap_alloc(sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IDrive_iface.lpVtbl = &drivevtbl;
    This->ref = 1;
    This->root = SysAllocStringLen(((void*)0), 3);
    if (!This->root)
    {
        heap_free(This);
        return E_OUTOFMEMORY;
    }
    This->root[0] = letter;
    This->root[1] = ':';
    This->root[2] = '\\';
    This->root[3] = 0;

    init_classinfo(&CLSID_Drive, (IUnknown *)&This->IDrive_iface, &This->classinfo);
    *drive = &This->IDrive_iface;
    return S_OK;
}
