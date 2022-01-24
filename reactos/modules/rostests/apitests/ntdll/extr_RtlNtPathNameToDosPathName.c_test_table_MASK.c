#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct test_entry {int Type; int /*<<< orphan*/  OutputPath; int /*<<< orphan*/ * InputPath; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
struct TYPE_11__ {scalar_t__ StaticBuffer; int StaticSize; int Size; int ReservedForAllocatedSize; int /*<<< orphan*/  const* ReservedForIMalloc; int /*<<< orphan*/  const* Buffer; } ;
struct TYPE_10__ {int /*<<< orphan*/  const* Buffer; int /*<<< orphan*/  MaximumLength; } ;
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {int MinimumStaticBufferForTerminalNul; TYPE_5__ ByteBuffer; TYPE_4__ String; TYPE_1__ member_0; } ;
typedef  int /*<<< orphan*/  StaticBuffer ;
typedef  TYPE_2__ RTL_UNICODE_STRING_BUFFER ;
typedef  scalar_t__ PUCHAR ;

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  RTL_SKIP_BUFFER_COPY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 

__attribute__((used)) static void FUNC11(struct test_entry* Entry)
{
    RTL_UNICODE_STRING_BUFFER Buffer = { 0 };
    WCHAR StaticBuffer[MAX_PATH];
    ULONG Type = 0x12345;

    FUNC2(&Buffer.ByteBuffer, (PUCHAR)StaticBuffer, sizeof(StaticBuffer));

    FUNC3(&Buffer.String, Entry->InputPath);
    FUNC0(RTL_SKIP_BUFFER_COPY, &Buffer.ByteBuffer, Buffer.String.MaximumLength);
    FUNC4(Buffer.ByteBuffer.Buffer, Buffer.String.Buffer, Buffer.String.MaximumLength);

    FUNC5(FUNC8(0, &Buffer, &Type, NULL), STATUS_SUCCESS);

    FUNC5(Type, Entry->Type);
    FUNC7(Buffer.String.Buffer, Entry->OutputPath);
    /* If there is no change in the path, the pointer is unchanged */
    if (!FUNC9(Entry->InputPath, Entry->OutputPath))
    {
        FUNC6(Buffer.String.Buffer, Entry->InputPath);
    }
    else
    {
        /* If there is a change in the path, the 'ByteBuffer' is used */
        FUNC10((PUCHAR)Buffer.String.Buffer >= Buffer.ByteBuffer.StaticBuffer &&
                    (PUCHAR)Buffer.String.Buffer <= (Buffer.ByteBuffer.StaticBuffer + Buffer.ByteBuffer.StaticSize),
                    "Expected Buffer to point inside StaticBuffer\n");
    }
    FUNC7((const WCHAR *)Buffer.ByteBuffer.Buffer, Entry->OutputPath);

    FUNC5(Buffer.MinimumStaticBufferForTerminalNul, 0);

    /* For none of our tests should we exceed the StaticBuffer size! */
    FUNC6(Buffer.ByteBuffer.Buffer, Buffer.ByteBuffer.StaticBuffer);
    FUNC5(Buffer.ByteBuffer.Size, Buffer.ByteBuffer.StaticSize);

    FUNC5(Buffer.ByteBuffer.ReservedForAllocatedSize, 0);
    FUNC6(Buffer.ByteBuffer.ReservedForIMalloc, NULL);

    FUNC1(&Buffer.ByteBuffer);
}