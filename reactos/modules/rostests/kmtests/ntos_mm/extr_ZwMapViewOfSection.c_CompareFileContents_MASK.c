#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_6__ {int /*<<< orphan*/  Information; } ;
struct TYPE_5__ {scalar_t__ QuadPart; } ;
typedef  scalar_t__ SIZE_T ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  TYPE_2__ IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  PagedPool ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static
SIZE_T
FUNC7(HANDLE FileHandle, ULONG BufferLength, PVOID Buffer)
{
    NTSTATUS Status;
    LARGE_INTEGER ByteOffset;
    IO_STATUS_BLOCK IoStatusBlock;
    PVOID FileContent;
    SIZE_T Match;

    Match = 0;
    ByteOffset.QuadPart = 0;

    FileContent = FUNC0(PagedPool, BufferLength, 'Test');
    if (!FUNC6((FileContent != NULL), "Error allocating memory for FileContent\n"))
    {
        Status = FUNC3(FileHandle, NULL, NULL, NULL, &IoStatusBlock, FileContent, BufferLength, &ByteOffset, NULL);
        FUNC4(Status, STATUS_SUCCESS);
        FUNC5(IoStatusBlock.Information, BufferLength);

        Match = 0;
        Match = FUNC2(FileContent, Buffer, BufferLength);
        FUNC1(FileContent, 'Test');
    }

    return Match;
}