
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ULONG ;
typedef int UINT ;
struct TYPE_4__ {int Length; int Buffer; } ;
struct TYPE_5__ {TYPE_1__ Name; } ;
typedef TYPE_2__* PIP_INTERFACE ;
typedef scalar_t__* PCHAR ;
typedef int NTSTATUS ;


 scalar_t__ NT_SUCCESS (int ) ;
 int RtlUnicodeToMultiByteN (scalar_t__*,int ,size_t*,int ,int ) ;

NTSTATUS GetInterfaceName( PIP_INTERFACE Interface,
      PCHAR NameBuffer,
      UINT Len ) {
    ULONG ResultSize = 0;
    NTSTATUS Status =
 RtlUnicodeToMultiByteN( NameBuffer,
    Len,
    &ResultSize,
    Interface->Name.Buffer,
    Interface->Name.Length );

    if( NT_SUCCESS(Status) )
 NameBuffer[ResultSize] = 0;
    else
 NameBuffer[0] = 0;

    return Status;
}
