
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int Information; } ;
struct TYPE_5__ {scalar_t__ QuadPart; } ;
typedef scalar_t__ SIZE_T ;
typedef int * PVOID ;
typedef int NTSTATUS ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef TYPE_2__ IO_STATUS_BLOCK ;
typedef int HANDLE ;


 int * ExAllocatePoolWithTag (int ,int ,char) ;
 int ExFreePoolWithTag (int *,char) ;
 int PagedPool ;
 scalar_t__ RtlCompareMemory (int *,int *,int ) ;
 int STATUS_SUCCESS ;
 int ZwReadFile (int ,int *,int *,int *,TYPE_2__*,int *,int ,TYPE_1__*,int *) ;
 int ok_eq_hex (int ,int ) ;
 int ok_eq_ulongptr (int ,int ) ;
 int skip (int ,char*) ;

__attribute__((used)) static
SIZE_T
CompareFileContents(HANDLE FileHandle, ULONG BufferLength, PVOID Buffer)
{
    NTSTATUS Status;
    LARGE_INTEGER ByteOffset;
    IO_STATUS_BLOCK IoStatusBlock;
    PVOID FileContent;
    SIZE_T Match;

    Match = 0;
    ByteOffset.QuadPart = 0;

    FileContent = ExAllocatePoolWithTag(PagedPool, BufferLength, 'Test');
    if (!skip((FileContent != ((void*)0)), "Error allocating memory for FileContent\n"))
    {
        Status = ZwReadFile(FileHandle, ((void*)0), ((void*)0), ((void*)0), &IoStatusBlock, FileContent, BufferLength, &ByteOffset, ((void*)0));
        ok_eq_hex(Status, STATUS_SUCCESS);
        ok_eq_ulongptr(IoStatusBlock.Information, BufferLength);

        Match = 0;
        Match = RtlCompareMemory(FileContent, Buffer, BufferLength);
        ExFreePoolWithTag(FileContent, 'Test');
    }

    return Match;
}
