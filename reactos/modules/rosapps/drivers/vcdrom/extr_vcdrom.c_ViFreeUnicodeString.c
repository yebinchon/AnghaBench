
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ MaximumLength; scalar_t__ Length; int * Buffer; } ;
typedef TYPE_1__* PUNICODE_STRING ;


 int ExFreePoolWithTag (int *,int ) ;

VOID
ViFreeUnicodeString(PUNICODE_STRING UnicodeString)
{



    if (UnicodeString->Buffer != ((void*)0))
    {
        ExFreePoolWithTag(UnicodeString->Buffer, 0);
        UnicodeString->Buffer = ((void*)0);
    }


    UnicodeString->Length = 0;
    UnicodeString->MaximumLength = 0;
}
