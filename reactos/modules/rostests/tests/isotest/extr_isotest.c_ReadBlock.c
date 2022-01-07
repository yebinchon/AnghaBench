
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {scalar_t__ Status; int Information; } ;
typedef int PVOID ;
typedef int * PULONG ;
typedef int PLARGE_INTEGER ;
typedef int OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_1__ IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef int BOOL ;


 int EVENT_ALL_ACCESS ;
 int FALSE ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int NT_SUCCESS (scalar_t__) ;
 int NtClose (int ) ;
 scalar_t__ NtCreateEvent (int *,int ,int *,int ,int ) ;
 scalar_t__ NtReadFile (int ,int ,int *,int *,TYPE_1__*,int ,int ,int ,int *) ;
 int NtWaitForSingleObject (int ,int ,int *) ;
 scalar_t__ STATUS_END_OF_FILE ;
 scalar_t__ STATUS_PENDING ;
 int TRUE ;
 int printf (char*,...) ;

BOOL
ReadBlock(HANDLE FileHandle,
   PVOID Buffer,
   PLARGE_INTEGER Offset,
   ULONG Length,
   PULONG BytesRead)
{
  IO_STATUS_BLOCK IoStatusBlock;
  OBJECT_ATTRIBUTES ObjectAttributes;
  NTSTATUS Status;
  HANDLE EventHandle;

  InitializeObjectAttributes(&ObjectAttributes,
        ((void*)0), 0, ((void*)0), ((void*)0));

  Status = NtCreateEvent(&EventHandle,
    EVENT_ALL_ACCESS,
    &ObjectAttributes,
    TRUE,
    FALSE);
  if (!NT_SUCCESS(Status))
    {
      printf("NtCreateEvent() failed\n");
      return(FALSE);
    }

  Status = NtReadFile(FileHandle,
        EventHandle,
        ((void*)0),
        ((void*)0),
        &IoStatusBlock,
        Buffer,
        Length,
        Offset,
        ((void*)0));
  if (Status == STATUS_PENDING)
    {
      NtWaitForSingleObject(EventHandle, FALSE, ((void*)0));
      Status = IoStatusBlock.Status;
    }

  NtClose(EventHandle);

  if (Status != STATUS_PENDING && BytesRead != ((void*)0))
    {
      *BytesRead = IoStatusBlock.Information;
    }
  if (!NT_SUCCESS(Status) && Status != STATUS_END_OF_FILE)
    {
      printf("ReadBlock() failed (Status: %lx)\n", Status);
      return(FALSE);
    }

  return(TRUE);
}
