
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* path; struct TYPE_4__* metadatahdr; int hfile; int hmap; int data; scalar_t__ is_mapped_file; } ;
typedef int HRESULT ;
typedef TYPE_1__ ASSEMBLY ;


 int CloseHandle (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int S_OK ;
 int UnmapViewOfFile (int ) ;

HRESULT assembly_release(ASSEMBLY *assembly)
{
    if (!assembly)
        return S_OK;

    if (assembly->is_mapped_file)
    {
        UnmapViewOfFile(assembly->data);
        CloseHandle(assembly->hmap);
        CloseHandle(assembly->hfile);
    }
    HeapFree(GetProcessHeap(), 0, assembly->metadatahdr);
    HeapFree(GetProcessHeap(), 0, assembly->path);
    HeapFree(GetProcessHeap(), 0, assembly);

    return S_OK;
}
