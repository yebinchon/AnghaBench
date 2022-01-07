
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UNICODE_STRING ;
struct TYPE_6__ {int * Buffer; scalar_t__ MaximumLength; scalar_t__ Length; } ;
typedef int * PWSTR ;
typedef TYPE_1__* PUNICODE_STRING ;


 int ExAllocatePool (int ,int) ;
 scalar_t__ ExAllocatePoolWithTag (int ,scalar_t__,int) ;
 int PagedPool ;
 int RtlCopyUnicodeString (TYPE_1__*,TYPE_1__*) ;
 int ok (int ,char*) ;

PUNICODE_STRING CopyUS(PUNICODE_STRING a)
{
    PUNICODE_STRING b = (PUNICODE_STRING)ExAllocatePool(PagedPool,sizeof(UNICODE_STRING));
    ok(b != ((void*)0), "US is NULL after allocated memory\n");
    b->Length = 0;
    b->MaximumLength =a->MaximumLength;
    if (b->MaximumLength)
    {
        b->Buffer = (PWSTR)ExAllocatePoolWithTag(PagedPool, b->MaximumLength, 1633);
        ok(b->Buffer != ((void*)0), "US->Buffer is NULL after allocated memory\n");
        RtlCopyUnicodeString(b, a);
    }
    else
    {
        b->Buffer = ((void*)0);
    }
    return b;
}
