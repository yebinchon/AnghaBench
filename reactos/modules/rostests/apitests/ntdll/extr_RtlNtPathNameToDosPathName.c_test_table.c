
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct test_entry {int Type; int OutputPath; int * InputPath; } ;
typedef int WCHAR ;
typedef int ULONG ;
struct TYPE_11__ {scalar_t__ StaticBuffer; int StaticSize; int Size; int ReservedForAllocatedSize; int const* ReservedForIMalloc; int const* Buffer; } ;
struct TYPE_10__ {int const* Buffer; int MaximumLength; } ;
struct TYPE_8__ {int member_0; } ;
struct TYPE_9__ {int MinimumStaticBufferForTerminalNul; TYPE_5__ ByteBuffer; TYPE_4__ String; TYPE_1__ member_0; } ;
typedef int StaticBuffer ;
typedef TYPE_2__ RTL_UNICODE_STRING_BUFFER ;
typedef scalar_t__ PUCHAR ;


 int MAX_PATH ;
 int RTL_SKIP_BUFFER_COPY ;
 int RtlEnsureBufferSize (int ,TYPE_5__*,int ) ;
 int RtlFreeBuffer (TYPE_5__*) ;
 int RtlInitBuffer (TYPE_5__*,scalar_t__,int) ;
 int RtlInitUnicodeString (TYPE_4__*,int *) ;
 int STATUS_SUCCESS ;
 int memcpy (int const*,int const*,int ) ;
 int ok_hex_ (int,int) ;
 int ok_ptr_ (int const*,int *) ;
 int ok_wstr_ (int const*,int ) ;
 int pRtlNtPathNameToDosPathName (int ,TYPE_2__*,int*,int *) ;
 int wcscmp (int *,int ) ;
 int winetest_ok (int,char*) ;

__attribute__((used)) static void test_table(struct test_entry* Entry)
{
    RTL_UNICODE_STRING_BUFFER Buffer = { { 0 } };
    WCHAR StaticBuffer[MAX_PATH];
    ULONG Type = 0x12345;

    RtlInitBuffer(&Buffer.ByteBuffer, (PUCHAR)StaticBuffer, sizeof(StaticBuffer));

    RtlInitUnicodeString(&Buffer.String, Entry->InputPath);
    RtlEnsureBufferSize(RTL_SKIP_BUFFER_COPY, &Buffer.ByteBuffer, Buffer.String.MaximumLength);
    memcpy(Buffer.ByteBuffer.Buffer, Buffer.String.Buffer, Buffer.String.MaximumLength);

    ok_hex_(pRtlNtPathNameToDosPathName(0, &Buffer, &Type, ((void*)0)), STATUS_SUCCESS);

    ok_hex_(Type, Entry->Type);
    ok_wstr_(Buffer.String.Buffer, Entry->OutputPath);

    if (!wcscmp(Entry->InputPath, Entry->OutputPath))
    {
        ok_ptr_(Buffer.String.Buffer, Entry->InputPath);
    }
    else
    {

        winetest_ok((PUCHAR)Buffer.String.Buffer >= Buffer.ByteBuffer.StaticBuffer &&
                    (PUCHAR)Buffer.String.Buffer <= (Buffer.ByteBuffer.StaticBuffer + Buffer.ByteBuffer.StaticSize),
                    "Expected Buffer to point inside StaticBuffer\n");
    }
    ok_wstr_((const WCHAR *)Buffer.ByteBuffer.Buffer, Entry->OutputPath);

    ok_hex_(Buffer.MinimumStaticBufferForTerminalNul, 0);


    ok_ptr_(Buffer.ByteBuffer.Buffer, Buffer.ByteBuffer.StaticBuffer);
    ok_hex_(Buffer.ByteBuffer.Size, Buffer.ByteBuffer.StaticSize);

    ok_hex_(Buffer.ByteBuffer.ReservedForAllocatedSize, 0);
    ok_ptr_(Buffer.ByteBuffer.ReservedForIMalloc, ((void*)0));

    RtlFreeBuffer(&Buffer.ByteBuffer);
}
