
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int Information; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__ IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef int BOOLEAN ;


 scalar_t__ NT_SUCCESS (int ) ;
 int RosSymStatus ;
 int ZwReadFile (int ,int *,int *,int *,TYPE_1__*,scalar_t__,int ,int *,int *) ;

BOOLEAN
RosSymZwReadFile(PVOID FileContext, PVOID Buffer, ULONG Size)
{

  IO_STATUS_BLOCK IoStatusBlock;

  RosSymStatus = ZwReadFile(*((HANDLE *) FileContext),
                      ((void*)0), ((void*)0), ((void*)0),
                      &IoStatusBlock,
                      Buffer,
                      Size,
                      ((void*)0), ((void*)0));

  return NT_SUCCESS(RosSymStatus) && IoStatusBlock.Information == Size;
}
