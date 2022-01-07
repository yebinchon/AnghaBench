
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef int USHORT ;
struct TYPE_5__ {int * Buffer; } ;
typedef TYPE_1__* PUNICODE_STRING ;


 int RtlFreeUnicodeString (TYPE_1__*) ;
 int RtlInitEmptyUnicodeString (TYPE_1__*,int *,int ) ;

__attribute__((used)) static void cleanup(PUNICODE_STRING String, WCHAR* Buffer, USHORT BufferSize)
{
    if (String->Buffer != Buffer)
    {
        RtlFreeUnicodeString(String);
        RtlInitEmptyUnicodeString(String, Buffer, BufferSize);
    }
}
