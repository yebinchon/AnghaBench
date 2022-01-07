
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_2__ {int FileOffset; int FileObject; } ;
typedef int PVOID ;
typedef TYPE_1__* PROSSYM_KM_OWN_CONTEXT ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int BOOLEAN ;


 int FALSE ;
 int MiSimpleRead (int ,int *,int ,int ,int ,int *) ;
 int NT_SUCCESS (int ) ;

__attribute__((used)) static BOOLEAN
KdbpReadSymFile(PVOID FileContext, PVOID Buffer, ULONG Length)
{
    PROSSYM_KM_OWN_CONTEXT Context = (PROSSYM_KM_OWN_CONTEXT)FileContext;
    IO_STATUS_BLOCK Iosb;
    NTSTATUS Status = MiSimpleRead
        (Context->FileObject,
         &Context->FileOffset,
         Buffer,
         Length,
         FALSE,
         &Iosb);
    return NT_SUCCESS(Status);
}
