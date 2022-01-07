
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ QuadPart; } ;
struct TYPE_6__ {int FileObject; TYPE_1__ FileOffset; } ;
typedef TYPE_2__* PROSSYM_KM_OWN_CONTEXT ;
typedef int PFILE_OBJECT ;


 TYPE_2__* ExAllocatePool (int ,int) ;
 int NonPagedPool ;
 int ObReferenceObject (int ) ;

__attribute__((used)) static PROSSYM_KM_OWN_CONTEXT
KdbpCaptureFileForSymbols(PFILE_OBJECT FileObject)
{
    PROSSYM_KM_OWN_CONTEXT Context = ExAllocatePool(NonPagedPool, sizeof(*Context));
    if (!Context) return ((void*)0);
    ObReferenceObject(FileObject);
    Context->FileOffset.QuadPart = 0;
    Context->FileObject = FileObject;
    return Context;
}
