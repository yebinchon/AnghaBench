
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int FileObject; } ;
typedef TYPE_1__* PROSSYM_KM_OWN_CONTEXT ;


 int ExFreePool (TYPE_1__*) ;
 int ObDereferenceObject (int ) ;

__attribute__((used)) static VOID
KdbpReleaseFileForSymbols(PROSSYM_KM_OWN_CONTEXT Context)
{
    ObDereferenceObject(Context->FileObject);
    ExFreePool(Context);
}
