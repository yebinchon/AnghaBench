
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ Information; } ;
typedef scalar_t__ PVOID ;
typedef int NTSTATUS ;
typedef TYPE_1__ IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef int BOOLEAN ;


 scalar_t__ NT_SUCCESS (int ) ;
 int ZwReadFile (int ,int *,int *,int *,TYPE_1__*,scalar_t__,scalar_t__,int *,int *) ;

BOOLEAN
RosSymZwReadFile(PVOID FileContext, PVOID Buffer, ULONG Size)
{
  NTSTATUS Status;
  IO_STATUS_BLOCK IoStatusBlock;

  Status = ZwReadFile(*((HANDLE *) FileContext),
                      ((void*)0), ((void*)0), ((void*)0),
                      &IoStatusBlock,
                      Buffer,
                      Size,
                      ((void*)0), ((void*)0));

  return NT_SUCCESS(Status) && IoStatusBlock.Information == Size;
}
