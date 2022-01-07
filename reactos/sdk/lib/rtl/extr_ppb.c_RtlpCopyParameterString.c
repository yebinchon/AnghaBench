
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
typedef int USHORT ;
struct TYPE_4__ {int Length; int MaximumLength; scalar_t__* Buffer; } ;
typedef scalar_t__* PWCHAR ;
typedef TYPE_1__* PUNICODE_STRING ;


 int memmove (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static __inline VOID
RtlpCopyParameterString(PWCHAR *Ptr,
   PUNICODE_STRING Destination,
   PUNICODE_STRING Source,
   USHORT Size)
{
   Destination->Length = Source->Length;
   Destination->MaximumLength = Size ? Size : Source->MaximumLength;
   Destination->Buffer = (PWCHAR)(*Ptr);
   if (Source->Length)
     memmove (Destination->Buffer, Source->Buffer, Source->Length);
   Destination->Buffer[Destination->Length / sizeof(WCHAR)] = 0;
   *Ptr += Destination->MaximumLength/sizeof(WCHAR);
}
